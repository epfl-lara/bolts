; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72670 () Bool)

(assert start!72670)

(declare-fun b!843056 () Bool)

(declare-fun e!470385 () Bool)

(declare-fun tp_is_empty!15693 () Bool)

(assert (=> b!843056 (= e!470385 tp_is_empty!15693)))

(declare-fun b!843057 () Bool)

(declare-fun res!573039 () Bool)

(declare-fun e!470383 () Bool)

(assert (=> b!843057 (=> (not res!573039) (not e!470383))))

(declare-datatypes ((array!47624 0))(
  ( (array!47625 (arr!22839 (Array (_ BitVec 32) (_ BitVec 64))) (size!23280 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47624)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47624 (_ BitVec 32)) Bool)

(assert (=> b!843057 (= res!573039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25139 () Bool)

(declare-fun mapRes!25139 () Bool)

(declare-fun tp!48458 () Bool)

(declare-fun e!470382 () Bool)

(assert (=> mapNonEmpty!25139 (= mapRes!25139 (and tp!48458 e!470382))))

(declare-datatypes ((V!25971 0))(
  ( (V!25972 (val!7894 Int)) )
))
(declare-datatypes ((ValueCell!7407 0))(
  ( (ValueCellFull!7407 (v!10315 V!25971)) (EmptyCell!7407) )
))
(declare-fun mapRest!25139 () (Array (_ BitVec 32) ValueCell!7407))

(declare-fun mapKey!25139 () (_ BitVec 32))

(declare-datatypes ((array!47626 0))(
  ( (array!47627 (arr!22840 (Array (_ BitVec 32) ValueCell!7407)) (size!23281 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47626)

(declare-fun mapValue!25139 () ValueCell!7407)

(assert (=> mapNonEmpty!25139 (= (arr!22840 _values!688) (store mapRest!25139 mapKey!25139 mapValue!25139))))

(declare-fun b!843058 () Bool)

(declare-fun e!470381 () Bool)

(assert (=> b!843058 (= e!470381 (and e!470385 mapRes!25139))))

(declare-fun condMapEmpty!25139 () Bool)

(declare-fun mapDefault!25139 () ValueCell!7407)

(assert (=> b!843058 (= condMapEmpty!25139 (= (arr!22840 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7407)) mapDefault!25139)))))

(declare-fun b!843059 () Bool)

(declare-fun res!573040 () Bool)

(assert (=> b!843059 (=> (not res!573040) (not e!470383))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843059 (= res!573040 (and (= (size!23281 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23280 _keys!868) (size!23281 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25139 () Bool)

(assert (=> mapIsEmpty!25139 mapRes!25139))

(declare-fun b!843060 () Bool)

(assert (=> b!843060 (= e!470383 false)))

(declare-fun lt!381051 () Bool)

(declare-datatypes ((List!16296 0))(
  ( (Nil!16293) (Cons!16292 (h!17423 (_ BitVec 64)) (t!22675 List!16296)) )
))
(declare-fun arrayNoDuplicates!0 (array!47624 (_ BitVec 32) List!16296) Bool)

(assert (=> b!843060 (= lt!381051 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16293))))

(declare-fun b!843061 () Bool)

(assert (=> b!843061 (= e!470382 tp_is_empty!15693)))

(declare-fun res!573041 () Bool)

(assert (=> start!72670 (=> (not res!573041) (not e!470383))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72670 (= res!573041 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23280 _keys!868))))))

(assert (=> start!72670 e!470383))

(assert (=> start!72670 true))

(declare-fun array_inv!18158 (array!47624) Bool)

(assert (=> start!72670 (array_inv!18158 _keys!868)))

(declare-fun array_inv!18159 (array!47626) Bool)

(assert (=> start!72670 (and (array_inv!18159 _values!688) e!470381)))

(declare-fun b!843062 () Bool)

(declare-fun res!573042 () Bool)

(assert (=> b!843062 (=> (not res!573042) (not e!470383))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843062 (= res!573042 (validMask!0 mask!1196))))

(assert (= (and start!72670 res!573041) b!843062))

(assert (= (and b!843062 res!573042) b!843059))

(assert (= (and b!843059 res!573040) b!843057))

(assert (= (and b!843057 res!573039) b!843060))

(assert (= (and b!843058 condMapEmpty!25139) mapIsEmpty!25139))

(assert (= (and b!843058 (not condMapEmpty!25139)) mapNonEmpty!25139))

(get-info :version)

(assert (= (and mapNonEmpty!25139 ((_ is ValueCellFull!7407) mapValue!25139)) b!843061))

(assert (= (and b!843058 ((_ is ValueCellFull!7407) mapDefault!25139)) b!843056))

(assert (= start!72670 b!843058))

(declare-fun m!785945 () Bool)

(assert (=> start!72670 m!785945))

(declare-fun m!785947 () Bool)

(assert (=> start!72670 m!785947))

(declare-fun m!785949 () Bool)

(assert (=> b!843060 m!785949))

(declare-fun m!785951 () Bool)

(assert (=> mapNonEmpty!25139 m!785951))

(declare-fun m!785953 () Bool)

(assert (=> b!843062 m!785953))

(declare-fun m!785955 () Bool)

(assert (=> b!843057 m!785955))

(check-sat tp_is_empty!15693 (not b!843062) (not b!843060) (not start!72670) (not b!843057) (not mapNonEmpty!25139))
(check-sat)
