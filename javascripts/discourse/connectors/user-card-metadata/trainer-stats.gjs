import Component from "@glimmer/component";

export default class TrainerStats extends Component {
  get user() {
    return this.args.outletArgs?.user;
  }

  get rankName() {
    const level = this.user?.trust_level ?? 0;
    const names = (settings.rank_names || "")
      .split("|")
      .map((s) => s.trim())
      .filter(Boolean);
    return names[level] ?? names[names.length - 1] ?? `TL${level}`;
  }

  get badgeCount() {
    return this.user?.badge_count ?? 0;
  }

  <template>
    <div class="metadata__trainer-rank">
      <span class="desc">Rank</span>
      {{this.rankName}}
    </div>
    <div class="metadata__badge-total">
      <span class="desc">Badges</span>
      {{this.badgeCount}}
    </div>
  </template>
}
