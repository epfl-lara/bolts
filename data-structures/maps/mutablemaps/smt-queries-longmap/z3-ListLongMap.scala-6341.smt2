; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!81768 () Bool)

(assert start!81768)

(declare-fun mapIsEmpty!33181 () Bool)

(declare-fun mapRes!33181 () Bool)

(assert (=> mapIsEmpty!33181 mapRes!33181))

(declare-fun b!953523 () Bool)

(declare-fun e!537136 () Bool)

(declare-fun tp_is_empty!20823 () Bool)

(assert (=> b!953523 (= e!537136 tp_is_empty!20823)))

(declare-fun res!638711 () Bool)

(declare-fun e!537133 () Bool)

(assert (=> start!81768 (=> (not res!638711) (not e!537133))))

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!81768 (= res!638711 (validMask!0 mask!1823))))

(assert (=> start!81768 e!537133))

(assert (=> start!81768 true))

(declare-datatypes ((V!32747 0))(
  ( (V!32748 (val!10462 Int)) )
))
(declare-datatypes ((ValueCell!9930 0))(
  ( (ValueCellFull!9930 (v!13016 V!32747)) (EmptyCell!9930) )
))
(declare-datatypes ((array!57769 0))(
  ( (array!57770 (arr!27765 (Array (_ BitVec 32) ValueCell!9930)) (size!28245 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!57769)

(declare-fun e!537132 () Bool)

(declare-fun array_inv!21497 (array!57769) Bool)

(assert (=> start!81768 (and (array_inv!21497 _values!1197) e!537132)))

(declare-datatypes ((array!57771 0))(
  ( (array!57772 (arr!27766 (Array (_ BitVec 32) (_ BitVec 64))) (size!28246 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!57771)

(declare-fun array_inv!21498 (array!57771) Bool)

(assert (=> start!81768 (array_inv!21498 _keys!1441)))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-fun b!953524 () Bool)

(assert (=> b!953524 (= e!537133 (and (= (size!28245 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28246 _keys!1441) (size!28245 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011) (not (= (size!28246 _keys!1441) (bvadd #b00000000000000000000000000000001 mask!1823)))))))

(declare-fun b!953525 () Bool)

(declare-fun e!537135 () Bool)

(assert (=> b!953525 (= e!537135 tp_is_empty!20823)))

(declare-fun b!953526 () Bool)

(assert (=> b!953526 (= e!537132 (and e!537135 mapRes!33181))))

(declare-fun condMapEmpty!33181 () Bool)

(declare-fun mapDefault!33181 () ValueCell!9930)

(assert (=> b!953526 (= condMapEmpty!33181 (= (arr!27765 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!9930)) mapDefault!33181)))))

(declare-fun mapNonEmpty!33181 () Bool)

(declare-fun tp!63571 () Bool)

(assert (=> mapNonEmpty!33181 (= mapRes!33181 (and tp!63571 e!537136))))

(declare-fun mapValue!33181 () ValueCell!9930)

(declare-fun mapKey!33181 () (_ BitVec 32))

(declare-fun mapRest!33181 () (Array (_ BitVec 32) ValueCell!9930))

(assert (=> mapNonEmpty!33181 (= (arr!27765 _values!1197) (store mapRest!33181 mapKey!33181 mapValue!33181))))

(assert (= (and start!81768 res!638711) b!953524))

(assert (= (and b!953526 condMapEmpty!33181) mapIsEmpty!33181))

(assert (= (and b!953526 (not condMapEmpty!33181)) mapNonEmpty!33181))

(get-info :version)

(assert (= (and mapNonEmpty!33181 ((_ is ValueCellFull!9930) mapValue!33181)) b!953523))

(assert (= (and b!953526 ((_ is ValueCellFull!9930) mapDefault!33181)) b!953525))

(assert (= start!81768 b!953526))

(declare-fun m!885619 () Bool)

(assert (=> start!81768 m!885619))

(declare-fun m!885621 () Bool)

(assert (=> start!81768 m!885621))

(declare-fun m!885623 () Bool)

(assert (=> start!81768 m!885623))

(declare-fun m!885625 () Bool)

(assert (=> mapNonEmpty!33181 m!885625))

(check-sat (not start!81768) (not mapNonEmpty!33181) tp_is_empty!20823)
(check-sat)
