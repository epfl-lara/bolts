; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72652 () Bool)

(assert start!72652)

(declare-fun res!572931 () Bool)

(declare-fun e!470250 () Bool)

(assert (=> start!72652 (=> (not res!572931) (not e!470250))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47590 0))(
  ( (array!47591 (arr!22822 (Array (_ BitVec 32) (_ BitVec 64))) (size!23263 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47590)

(assert (=> start!72652 (= res!572931 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23263 _keys!868))))))

(assert (=> start!72652 e!470250))

(assert (=> start!72652 true))

(declare-fun array_inv!18144 (array!47590) Bool)

(assert (=> start!72652 (array_inv!18144 _keys!868)))

(declare-datatypes ((V!25947 0))(
  ( (V!25948 (val!7885 Int)) )
))
(declare-datatypes ((ValueCell!7398 0))(
  ( (ValueCellFull!7398 (v!10306 V!25947)) (EmptyCell!7398) )
))
(declare-datatypes ((array!47592 0))(
  ( (array!47593 (arr!22823 (Array (_ BitVec 32) ValueCell!7398)) (size!23264 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47592)

(declare-fun e!470248 () Bool)

(declare-fun array_inv!18145 (array!47592) Bool)

(assert (=> start!72652 (and (array_inv!18145 _values!688) e!470248)))

(declare-fun b!842867 () Bool)

(declare-fun e!470246 () Bool)

(declare-fun tp_is_empty!15675 () Bool)

(assert (=> b!842867 (= e!470246 tp_is_empty!15675)))

(declare-fun b!842868 () Bool)

(assert (=> b!842868 (= e!470250 false)))

(declare-fun lt!381024 () Bool)

(declare-datatypes ((List!16290 0))(
  ( (Nil!16287) (Cons!16286 (h!17417 (_ BitVec 64)) (t!22669 List!16290)) )
))
(declare-fun arrayNoDuplicates!0 (array!47590 (_ BitVec 32) List!16290) Bool)

(assert (=> b!842868 (= lt!381024 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16287))))

(declare-fun b!842869 () Bool)

(declare-fun e!470249 () Bool)

(assert (=> b!842869 (= e!470249 tp_is_empty!15675)))

(declare-fun b!842870 () Bool)

(declare-fun res!572934 () Bool)

(assert (=> b!842870 (=> (not res!572934) (not e!470250))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!842870 (= res!572934 (and (= (size!23264 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23263 _keys!868) (size!23264 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842871 () Bool)

(declare-fun res!572933 () Bool)

(assert (=> b!842871 (=> (not res!572933) (not e!470250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47590 (_ BitVec 32)) Bool)

(assert (=> b!842871 (= res!572933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842872 () Bool)

(declare-fun mapRes!25112 () Bool)

(assert (=> b!842872 (= e!470248 (and e!470246 mapRes!25112))))

(declare-fun condMapEmpty!25112 () Bool)

(declare-fun mapDefault!25112 () ValueCell!7398)

(assert (=> b!842872 (= condMapEmpty!25112 (= (arr!22823 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7398)) mapDefault!25112)))))

(declare-fun b!842873 () Bool)

(declare-fun res!572932 () Bool)

(assert (=> b!842873 (=> (not res!572932) (not e!470250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842873 (= res!572932 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!25112 () Bool)

(assert (=> mapIsEmpty!25112 mapRes!25112))

(declare-fun mapNonEmpty!25112 () Bool)

(declare-fun tp!48431 () Bool)

(assert (=> mapNonEmpty!25112 (= mapRes!25112 (and tp!48431 e!470249))))

(declare-fun mapRest!25112 () (Array (_ BitVec 32) ValueCell!7398))

(declare-fun mapKey!25112 () (_ BitVec 32))

(declare-fun mapValue!25112 () ValueCell!7398)

(assert (=> mapNonEmpty!25112 (= (arr!22823 _values!688) (store mapRest!25112 mapKey!25112 mapValue!25112))))

(assert (= (and start!72652 res!572931) b!842873))

(assert (= (and b!842873 res!572932) b!842870))

(assert (= (and b!842870 res!572934) b!842871))

(assert (= (and b!842871 res!572933) b!842868))

(assert (= (and b!842872 condMapEmpty!25112) mapIsEmpty!25112))

(assert (= (and b!842872 (not condMapEmpty!25112)) mapNonEmpty!25112))

(get-info :version)

(assert (= (and mapNonEmpty!25112 ((_ is ValueCellFull!7398) mapValue!25112)) b!842869))

(assert (= (and b!842872 ((_ is ValueCellFull!7398) mapDefault!25112)) b!842867))

(assert (= start!72652 b!842872))

(declare-fun m!785837 () Bool)

(assert (=> b!842871 m!785837))

(declare-fun m!785839 () Bool)

(assert (=> b!842873 m!785839))

(declare-fun m!785841 () Bool)

(assert (=> start!72652 m!785841))

(declare-fun m!785843 () Bool)

(assert (=> start!72652 m!785843))

(declare-fun m!785845 () Bool)

(assert (=> b!842868 m!785845))

(declare-fun m!785847 () Bool)

(assert (=> mapNonEmpty!25112 m!785847))

(check-sat (not b!842868) (not start!72652) (not mapNonEmpty!25112) tp_is_empty!15675 (not b!842873) (not b!842871))
(check-sat)
