; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43236 () Bool)

(assert start!43236)

(declare-fun mapIsEmpty!22120 () Bool)

(declare-fun mapRes!22120 () Bool)

(assert (=> mapIsEmpty!22120 mapRes!22120))

(declare-fun b!478843 () Bool)

(declare-fun e!281670 () Bool)

(declare-fun e!281668 () Bool)

(assert (=> b!478843 (= e!281670 (and e!281668 mapRes!22120))))

(declare-fun condMapEmpty!22120 () Bool)

(declare-datatypes ((V!19227 0))(
  ( (V!19228 (val!6856 Int)) )
))
(declare-datatypes ((ValueCell!6447 0))(
  ( (ValueCellFull!6447 (v!9141 V!19227)) (EmptyCell!6447) )
))
(declare-datatypes ((array!30873 0))(
  ( (array!30874 (arr!14841 (Array (_ BitVec 32) ValueCell!6447)) (size!15199 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30873)

(declare-fun mapDefault!22120 () ValueCell!6447)

(assert (=> b!478843 (= condMapEmpty!22120 (= (arr!14841 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6447)) mapDefault!22120)))))

(declare-fun b!478844 () Bool)

(declare-fun res!285722 () Bool)

(declare-fun e!281667 () Bool)

(assert (=> b!478844 (=> (not res!285722) (not e!281667))))

(declare-datatypes ((array!30875 0))(
  ( (array!30876 (arr!14842 (Array (_ BitVec 32) (_ BitVec 64))) (size!15200 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30875)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30875 (_ BitVec 32)) Bool)

(assert (=> b!478844 (= res!285722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!478845 () Bool)

(declare-fun res!285723 () Bool)

(assert (=> b!478845 (=> (not res!285723) (not e!281667))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!478845 (= res!285723 (and (= (size!15199 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15200 _keys!1874) (size!15199 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!478846 () Bool)

(assert (=> b!478846 (= e!281667 false)))

(declare-fun lt!217772 () Bool)

(declare-datatypes ((List!9108 0))(
  ( (Nil!9105) (Cons!9104 (h!9960 (_ BitVec 64)) (t!15322 List!9108)) )
))
(declare-fun arrayNoDuplicates!0 (array!30875 (_ BitVec 32) List!9108) Bool)

(assert (=> b!478846 (= lt!217772 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9105))))

(declare-fun b!478847 () Bool)

(declare-fun e!281671 () Bool)

(declare-fun tp_is_empty!13617 () Bool)

(assert (=> b!478847 (= e!281671 tp_is_empty!13617)))

(declare-fun mapNonEmpty!22120 () Bool)

(declare-fun tp!42595 () Bool)

(assert (=> mapNonEmpty!22120 (= mapRes!22120 (and tp!42595 e!281671))))

(declare-fun mapValue!22120 () ValueCell!6447)

(declare-fun mapRest!22120 () (Array (_ BitVec 32) ValueCell!6447))

(declare-fun mapKey!22120 () (_ BitVec 32))

(assert (=> mapNonEmpty!22120 (= (arr!14841 _values!1516) (store mapRest!22120 mapKey!22120 mapValue!22120))))

(declare-fun res!285721 () Bool)

(assert (=> start!43236 (=> (not res!285721) (not e!281667))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43236 (= res!285721 (validMask!0 mask!2352))))

(assert (=> start!43236 e!281667))

(assert (=> start!43236 true))

(declare-fun array_inv!10696 (array!30873) Bool)

(assert (=> start!43236 (and (array_inv!10696 _values!1516) e!281670)))

(declare-fun array_inv!10697 (array!30875) Bool)

(assert (=> start!43236 (array_inv!10697 _keys!1874)))

(declare-fun b!478848 () Bool)

(assert (=> b!478848 (= e!281668 tp_is_empty!13617)))

(assert (= (and start!43236 res!285721) b!478845))

(assert (= (and b!478845 res!285723) b!478844))

(assert (= (and b!478844 res!285722) b!478846))

(assert (= (and b!478843 condMapEmpty!22120) mapIsEmpty!22120))

(assert (= (and b!478843 (not condMapEmpty!22120)) mapNonEmpty!22120))

(get-info :version)

(assert (= (and mapNonEmpty!22120 ((_ is ValueCellFull!6447) mapValue!22120)) b!478847))

(assert (= (and b!478843 ((_ is ValueCellFull!6447) mapDefault!22120)) b!478848))

(assert (= start!43236 b!478843))

(declare-fun m!460945 () Bool)

(assert (=> b!478844 m!460945))

(declare-fun m!460947 () Bool)

(assert (=> b!478846 m!460947))

(declare-fun m!460949 () Bool)

(assert (=> mapNonEmpty!22120 m!460949))

(declare-fun m!460951 () Bool)

(assert (=> start!43236 m!460951))

(declare-fun m!460953 () Bool)

(assert (=> start!43236 m!460953))

(declare-fun m!460955 () Bool)

(assert (=> start!43236 m!460955))

(check-sat (not b!478844) (not b!478846) (not mapNonEmpty!22120) (not start!43236) tp_is_empty!13617)
(check-sat)
