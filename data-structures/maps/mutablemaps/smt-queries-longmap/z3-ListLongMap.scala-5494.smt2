; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72778 () Bool)

(assert start!72778)

(declare-fun b!844190 () Bool)

(declare-fun e!471191 () Bool)

(assert (=> b!844190 (= e!471191 false)))

(declare-fun lt!381213 () Bool)

(declare-datatypes ((array!47818 0))(
  ( (array!47819 (arr!22936 (Array (_ BitVec 32) (_ BitVec 64))) (size!23377 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47818)

(declare-datatypes ((List!16336 0))(
  ( (Nil!16333) (Cons!16332 (h!17463 (_ BitVec 64)) (t!22715 List!16336)) )
))
(declare-fun arrayNoDuplicates!0 (array!47818 (_ BitVec 32) List!16336) Bool)

(assert (=> b!844190 (= lt!381213 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16333))))

(declare-fun mapNonEmpty!25301 () Bool)

(declare-fun mapRes!25301 () Bool)

(declare-fun tp!48620 () Bool)

(declare-fun e!471193 () Bool)

(assert (=> mapNonEmpty!25301 (= mapRes!25301 (and tp!48620 e!471193))))

(declare-fun mapKey!25301 () (_ BitVec 32))

(declare-datatypes ((V!26115 0))(
  ( (V!26116 (val!7948 Int)) )
))
(declare-datatypes ((ValueCell!7461 0))(
  ( (ValueCellFull!7461 (v!10369 V!26115)) (EmptyCell!7461) )
))
(declare-fun mapRest!25301 () (Array (_ BitVec 32) ValueCell!7461))

(declare-fun mapValue!25301 () ValueCell!7461)

(declare-datatypes ((array!47820 0))(
  ( (array!47821 (arr!22937 (Array (_ BitVec 32) ValueCell!7461)) (size!23378 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47820)

(assert (=> mapNonEmpty!25301 (= (arr!22937 _values!688) (store mapRest!25301 mapKey!25301 mapValue!25301))))

(declare-fun b!844191 () Bool)

(declare-fun res!573690 () Bool)

(assert (=> b!844191 (=> (not res!573690) (not e!471191))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844191 (= res!573690 (validMask!0 mask!1196))))

(declare-fun b!844192 () Bool)

(declare-fun tp_is_empty!15801 () Bool)

(assert (=> b!844192 (= e!471193 tp_is_empty!15801)))

(declare-fun res!573689 () Bool)

(assert (=> start!72778 (=> (not res!573689) (not e!471191))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72778 (= res!573689 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23377 _keys!868))))))

(assert (=> start!72778 e!471191))

(assert (=> start!72778 true))

(declare-fun array_inv!18222 (array!47818) Bool)

(assert (=> start!72778 (array_inv!18222 _keys!868)))

(declare-fun e!471192 () Bool)

(declare-fun array_inv!18223 (array!47820) Bool)

(assert (=> start!72778 (and (array_inv!18223 _values!688) e!471192)))

(declare-fun b!844193 () Bool)

(declare-fun e!471195 () Bool)

(assert (=> b!844193 (= e!471195 tp_is_empty!15801)))

(declare-fun mapIsEmpty!25301 () Bool)

(assert (=> mapIsEmpty!25301 mapRes!25301))

(declare-fun b!844194 () Bool)

(declare-fun res!573688 () Bool)

(assert (=> b!844194 (=> (not res!573688) (not e!471191))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844194 (= res!573688 (and (= (size!23378 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23377 _keys!868) (size!23378 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844195 () Bool)

(assert (=> b!844195 (= e!471192 (and e!471195 mapRes!25301))))

(declare-fun condMapEmpty!25301 () Bool)

(declare-fun mapDefault!25301 () ValueCell!7461)

(assert (=> b!844195 (= condMapEmpty!25301 (= (arr!22937 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7461)) mapDefault!25301)))))

(declare-fun b!844196 () Bool)

(declare-fun res!573687 () Bool)

(assert (=> b!844196 (=> (not res!573687) (not e!471191))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47818 (_ BitVec 32)) Bool)

(assert (=> b!844196 (= res!573687 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(assert (= (and start!72778 res!573689) b!844191))

(assert (= (and b!844191 res!573690) b!844194))

(assert (= (and b!844194 res!573688) b!844196))

(assert (= (and b!844196 res!573687) b!844190))

(assert (= (and b!844195 condMapEmpty!25301) mapIsEmpty!25301))

(assert (= (and b!844195 (not condMapEmpty!25301)) mapNonEmpty!25301))

(get-info :version)

(assert (= (and mapNonEmpty!25301 ((_ is ValueCellFull!7461) mapValue!25301)) b!844192))

(assert (= (and b!844195 ((_ is ValueCellFull!7461) mapDefault!25301)) b!844193))

(assert (= start!72778 b!844195))

(declare-fun m!786593 () Bool)

(assert (=> mapNonEmpty!25301 m!786593))

(declare-fun m!786595 () Bool)

(assert (=> b!844190 m!786595))

(declare-fun m!786597 () Bool)

(assert (=> b!844191 m!786597))

(declare-fun m!786599 () Bool)

(assert (=> start!72778 m!786599))

(declare-fun m!786601 () Bool)

(assert (=> start!72778 m!786601))

(declare-fun m!786603 () Bool)

(assert (=> b!844196 m!786603))

(check-sat (not b!844190) (not mapNonEmpty!25301) (not start!72778) (not b!844191) (not b!844196) tp_is_empty!15801)
(check-sat)
