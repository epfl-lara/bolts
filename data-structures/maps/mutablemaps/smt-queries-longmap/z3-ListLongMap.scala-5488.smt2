; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72742 () Bool)

(assert start!72742)

(declare-fun b!843812 () Bool)

(declare-fun res!573473 () Bool)

(declare-fun e!470921 () Bool)

(assert (=> b!843812 (=> (not res!573473) (not e!470921))))

(declare-datatypes ((array!47754 0))(
  ( (array!47755 (arr!22904 (Array (_ BitVec 32) (_ BitVec 64))) (size!23345 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47754)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47754 (_ BitVec 32)) Bool)

(assert (=> b!843812 (= res!573473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843813 () Bool)

(assert (=> b!843813 (= e!470921 false)))

(declare-fun lt!381159 () Bool)

(declare-datatypes ((List!16324 0))(
  ( (Nil!16321) (Cons!16320 (h!17451 (_ BitVec 64)) (t!22703 List!16324)) )
))
(declare-fun arrayNoDuplicates!0 (array!47754 (_ BitVec 32) List!16324) Bool)

(assert (=> b!843813 (= lt!381159 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16321))))

(declare-fun b!843814 () Bool)

(declare-fun e!470925 () Bool)

(declare-fun tp_is_empty!15765 () Bool)

(assert (=> b!843814 (= e!470925 tp_is_empty!15765)))

(declare-fun mapNonEmpty!25247 () Bool)

(declare-fun mapRes!25247 () Bool)

(declare-fun tp!48566 () Bool)

(declare-fun e!470922 () Bool)

(assert (=> mapNonEmpty!25247 (= mapRes!25247 (and tp!48566 e!470922))))

(declare-datatypes ((V!26067 0))(
  ( (V!26068 (val!7930 Int)) )
))
(declare-datatypes ((ValueCell!7443 0))(
  ( (ValueCellFull!7443 (v!10351 V!26067)) (EmptyCell!7443) )
))
(declare-fun mapRest!25247 () (Array (_ BitVec 32) ValueCell!7443))

(declare-fun mapKey!25247 () (_ BitVec 32))

(declare-fun mapValue!25247 () ValueCell!7443)

(declare-datatypes ((array!47756 0))(
  ( (array!47757 (arr!22905 (Array (_ BitVec 32) ValueCell!7443)) (size!23346 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47756)

(assert (=> mapNonEmpty!25247 (= (arr!22905 _values!688) (store mapRest!25247 mapKey!25247 mapValue!25247))))

(declare-fun b!843816 () Bool)

(declare-fun res!573472 () Bool)

(assert (=> b!843816 (=> (not res!573472) (not e!470921))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843816 (= res!573472 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25247 () Bool)

(assert (=> mapIsEmpty!25247 mapRes!25247))

(declare-fun b!843817 () Bool)

(declare-fun res!573474 () Bool)

(assert (=> b!843817 (=> (not res!573474) (not e!470921))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843817 (= res!573474 (and (= (size!23346 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23345 _keys!868) (size!23346 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!843818 () Bool)

(declare-fun e!470923 () Bool)

(assert (=> b!843818 (= e!470923 (and e!470925 mapRes!25247))))

(declare-fun condMapEmpty!25247 () Bool)

(declare-fun mapDefault!25247 () ValueCell!7443)

(assert (=> b!843818 (= condMapEmpty!25247 (= (arr!22905 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7443)) mapDefault!25247)))))

(declare-fun b!843815 () Bool)

(assert (=> b!843815 (= e!470922 tp_is_empty!15765)))

(declare-fun res!573471 () Bool)

(assert (=> start!72742 (=> (not res!573471) (not e!470921))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72742 (= res!573471 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23345 _keys!868))))))

(assert (=> start!72742 e!470921))

(assert (=> start!72742 true))

(declare-fun array_inv!18200 (array!47754) Bool)

(assert (=> start!72742 (array_inv!18200 _keys!868)))

(declare-fun array_inv!18201 (array!47756) Bool)

(assert (=> start!72742 (and (array_inv!18201 _values!688) e!470923)))

(assert (= (and start!72742 res!573471) b!843816))

(assert (= (and b!843816 res!573472) b!843817))

(assert (= (and b!843817 res!573474) b!843812))

(assert (= (and b!843812 res!573473) b!843813))

(assert (= (and b!843818 condMapEmpty!25247) mapIsEmpty!25247))

(assert (= (and b!843818 (not condMapEmpty!25247)) mapNonEmpty!25247))

(get-info :version)

(assert (= (and mapNonEmpty!25247 ((_ is ValueCellFull!7443) mapValue!25247)) b!843815))

(assert (= (and b!843818 ((_ is ValueCellFull!7443) mapDefault!25247)) b!843814))

(assert (= start!72742 b!843818))

(declare-fun m!786377 () Bool)

(assert (=> start!72742 m!786377))

(declare-fun m!786379 () Bool)

(assert (=> start!72742 m!786379))

(declare-fun m!786381 () Bool)

(assert (=> b!843812 m!786381))

(declare-fun m!786383 () Bool)

(assert (=> b!843816 m!786383))

(declare-fun m!786385 () Bool)

(assert (=> mapNonEmpty!25247 m!786385))

(declare-fun m!786387 () Bool)

(assert (=> b!843813 m!786387))

(check-sat (not mapNonEmpty!25247) tp_is_empty!15765 (not b!843816) (not start!72742) (not b!843813) (not b!843812))
(check-sat)
