; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72658 () Bool)

(assert start!72658)

(declare-fun b!842930 () Bool)

(declare-fun e!470294 () Bool)

(declare-fun e!470291 () Bool)

(declare-fun mapRes!25121 () Bool)

(assert (=> b!842930 (= e!470294 (and e!470291 mapRes!25121))))

(declare-fun condMapEmpty!25121 () Bool)

(declare-datatypes ((V!25955 0))(
  ( (V!25956 (val!7888 Int)) )
))
(declare-datatypes ((ValueCell!7401 0))(
  ( (ValueCellFull!7401 (v!10309 V!25955)) (EmptyCell!7401) )
))
(declare-datatypes ((array!47602 0))(
  ( (array!47603 (arr!22828 (Array (_ BitVec 32) ValueCell!7401)) (size!23269 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47602)

(declare-fun mapDefault!25121 () ValueCell!7401)

(assert (=> b!842930 (= condMapEmpty!25121 (= (arr!22828 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7401)) mapDefault!25121)))))

(declare-fun mapIsEmpty!25121 () Bool)

(assert (=> mapIsEmpty!25121 mapRes!25121))

(declare-fun b!842931 () Bool)

(declare-fun res!572968 () Bool)

(declare-fun e!470295 () Bool)

(assert (=> b!842931 (=> (not res!572968) (not e!470295))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842931 (= res!572968 (validMask!0 mask!1196))))

(declare-fun res!572967 () Bool)

(assert (=> start!72658 (=> (not res!572967) (not e!470295))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47604 0))(
  ( (array!47605 (arr!22829 (Array (_ BitVec 32) (_ BitVec 64))) (size!23270 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47604)

(assert (=> start!72658 (= res!572967 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23270 _keys!868))))))

(assert (=> start!72658 e!470295))

(assert (=> start!72658 true))

(declare-fun array_inv!18148 (array!47604) Bool)

(assert (=> start!72658 (array_inv!18148 _keys!868)))

(declare-fun array_inv!18149 (array!47602) Bool)

(assert (=> start!72658 (and (array_inv!18149 _values!688) e!470294)))

(declare-fun b!842932 () Bool)

(declare-fun e!470293 () Bool)

(declare-fun tp_is_empty!15681 () Bool)

(assert (=> b!842932 (= e!470293 tp_is_empty!15681)))

(declare-fun mapNonEmpty!25121 () Bool)

(declare-fun tp!48440 () Bool)

(assert (=> mapNonEmpty!25121 (= mapRes!25121 (and tp!48440 e!470293))))

(declare-fun mapRest!25121 () (Array (_ BitVec 32) ValueCell!7401))

(declare-fun mapKey!25121 () (_ BitVec 32))

(declare-fun mapValue!25121 () ValueCell!7401)

(assert (=> mapNonEmpty!25121 (= (arr!22828 _values!688) (store mapRest!25121 mapKey!25121 mapValue!25121))))

(declare-fun b!842933 () Bool)

(declare-fun res!572969 () Bool)

(assert (=> b!842933 (=> (not res!572969) (not e!470295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47604 (_ BitVec 32)) Bool)

(assert (=> b!842933 (= res!572969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842934 () Bool)

(assert (=> b!842934 (= e!470291 tp_is_empty!15681)))

(declare-fun b!842935 () Bool)

(declare-fun res!572970 () Bool)

(assert (=> b!842935 (=> (not res!572970) (not e!470295))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842935 (= res!572970 (and (= (size!23269 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23270 _keys!868) (size!23269 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842936 () Bool)

(assert (=> b!842936 (= e!470295 false)))

(declare-fun lt!381033 () Bool)

(declare-datatypes ((List!16293 0))(
  ( (Nil!16290) (Cons!16289 (h!17420 (_ BitVec 64)) (t!22672 List!16293)) )
))
(declare-fun arrayNoDuplicates!0 (array!47604 (_ BitVec 32) List!16293) Bool)

(assert (=> b!842936 (= lt!381033 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16290))))

(assert (= (and start!72658 res!572967) b!842931))

(assert (= (and b!842931 res!572968) b!842935))

(assert (= (and b!842935 res!572970) b!842933))

(assert (= (and b!842933 res!572969) b!842936))

(assert (= (and b!842930 condMapEmpty!25121) mapIsEmpty!25121))

(assert (= (and b!842930 (not condMapEmpty!25121)) mapNonEmpty!25121))

(get-info :version)

(assert (= (and mapNonEmpty!25121 ((_ is ValueCellFull!7401) mapValue!25121)) b!842932))

(assert (= (and b!842930 ((_ is ValueCellFull!7401) mapDefault!25121)) b!842934))

(assert (= start!72658 b!842930))

(declare-fun m!785873 () Bool)

(assert (=> mapNonEmpty!25121 m!785873))

(declare-fun m!785875 () Bool)

(assert (=> start!72658 m!785875))

(declare-fun m!785877 () Bool)

(assert (=> start!72658 m!785877))

(declare-fun m!785879 () Bool)

(assert (=> b!842933 m!785879))

(declare-fun m!785881 () Bool)

(assert (=> b!842936 m!785881))

(declare-fun m!785883 () Bool)

(assert (=> b!842931 m!785883))

(check-sat (not mapNonEmpty!25121) (not b!842933) tp_is_empty!15681 (not start!72658) (not b!842931) (not b!842936))
(check-sat)
