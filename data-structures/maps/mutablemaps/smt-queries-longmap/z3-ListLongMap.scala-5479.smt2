; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72688 () Bool)

(assert start!72688)

(declare-fun b!843245 () Bool)

(declare-fun res!573149 () Bool)

(declare-fun e!470519 () Bool)

(assert (=> b!843245 (=> (not res!573149) (not e!470519))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843245 (= res!573149 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25166 () Bool)

(declare-fun mapRes!25166 () Bool)

(assert (=> mapIsEmpty!25166 mapRes!25166))

(declare-fun b!843246 () Bool)

(declare-fun e!470518 () Bool)

(declare-fun tp_is_empty!15711 () Bool)

(assert (=> b!843246 (= e!470518 tp_is_empty!15711)))

(declare-fun b!843247 () Bool)

(assert (=> b!843247 (= e!470519 false)))

(declare-fun lt!381078 () Bool)

(declare-datatypes ((array!47656 0))(
  ( (array!47657 (arr!22855 (Array (_ BitVec 32) (_ BitVec 64))) (size!23296 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47656)

(declare-datatypes ((List!16302 0))(
  ( (Nil!16299) (Cons!16298 (h!17429 (_ BitVec 64)) (t!22681 List!16302)) )
))
(declare-fun arrayNoDuplicates!0 (array!47656 (_ BitVec 32) List!16302) Bool)

(assert (=> b!843247 (= lt!381078 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16299))))

(declare-fun b!843249 () Bool)

(declare-fun e!470520 () Bool)

(declare-fun e!470516 () Bool)

(assert (=> b!843249 (= e!470520 (and e!470516 mapRes!25166))))

(declare-fun condMapEmpty!25166 () Bool)

(declare-datatypes ((V!25995 0))(
  ( (V!25996 (val!7903 Int)) )
))
(declare-datatypes ((ValueCell!7416 0))(
  ( (ValueCellFull!7416 (v!10324 V!25995)) (EmptyCell!7416) )
))
(declare-datatypes ((array!47658 0))(
  ( (array!47659 (arr!22856 (Array (_ BitVec 32) ValueCell!7416)) (size!23297 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47658)

(declare-fun mapDefault!25166 () ValueCell!7416)

(assert (=> b!843249 (= condMapEmpty!25166 (= (arr!22856 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7416)) mapDefault!25166)))))

(declare-fun mapNonEmpty!25166 () Bool)

(declare-fun tp!48485 () Bool)

(assert (=> mapNonEmpty!25166 (= mapRes!25166 (and tp!48485 e!470518))))

(declare-fun mapRest!25166 () (Array (_ BitVec 32) ValueCell!7416))

(declare-fun mapValue!25166 () ValueCell!7416)

(declare-fun mapKey!25166 () (_ BitVec 32))

(assert (=> mapNonEmpty!25166 (= (arr!22856 _values!688) (store mapRest!25166 mapKey!25166 mapValue!25166))))

(declare-fun b!843248 () Bool)

(declare-fun res!573148 () Bool)

(assert (=> b!843248 (=> (not res!573148) (not e!470519))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47656 (_ BitVec 32)) Bool)

(assert (=> b!843248 (= res!573148 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!573150 () Bool)

(assert (=> start!72688 (=> (not res!573150) (not e!470519))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72688 (= res!573150 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23296 _keys!868))))))

(assert (=> start!72688 e!470519))

(assert (=> start!72688 true))

(declare-fun array_inv!18168 (array!47656) Bool)

(assert (=> start!72688 (array_inv!18168 _keys!868)))

(declare-fun array_inv!18169 (array!47658) Bool)

(assert (=> start!72688 (and (array_inv!18169 _values!688) e!470520)))

(declare-fun b!843250 () Bool)

(declare-fun res!573147 () Bool)

(assert (=> b!843250 (=> (not res!573147) (not e!470519))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843250 (= res!573147 (and (= (size!23297 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23296 _keys!868) (size!23297 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843251 () Bool)

(assert (=> b!843251 (= e!470516 tp_is_empty!15711)))

(assert (= (and start!72688 res!573150) b!843245))

(assert (= (and b!843245 res!573149) b!843250))

(assert (= (and b!843250 res!573147) b!843248))

(assert (= (and b!843248 res!573148) b!843247))

(assert (= (and b!843249 condMapEmpty!25166) mapIsEmpty!25166))

(assert (= (and b!843249 (not condMapEmpty!25166)) mapNonEmpty!25166))

(get-info :version)

(assert (= (and mapNonEmpty!25166 ((_ is ValueCellFull!7416) mapValue!25166)) b!843246))

(assert (= (and b!843249 ((_ is ValueCellFull!7416) mapDefault!25166)) b!843251))

(assert (= start!72688 b!843249))

(declare-fun m!786053 () Bool)

(assert (=> b!843248 m!786053))

(declare-fun m!786055 () Bool)

(assert (=> start!72688 m!786055))

(declare-fun m!786057 () Bool)

(assert (=> start!72688 m!786057))

(declare-fun m!786059 () Bool)

(assert (=> b!843247 m!786059))

(declare-fun m!786061 () Bool)

(assert (=> mapNonEmpty!25166 m!786061))

(declare-fun m!786063 () Bool)

(assert (=> b!843245 m!786063))

(check-sat (not b!843248) (not start!72688) (not b!843247) tp_is_empty!15711 (not mapNonEmpty!25166) (not b!843245))
(check-sat)
