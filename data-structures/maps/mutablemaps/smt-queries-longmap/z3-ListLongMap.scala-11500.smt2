; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133868 () Bool)

(assert start!133868)

(declare-fun b!1564632 () Bool)

(declare-fun e!872107 () Bool)

(declare-fun e!872108 () Bool)

(declare-fun mapRes!59707 () Bool)

(assert (=> b!1564632 (= e!872107 (and e!872108 mapRes!59707))))

(declare-fun condMapEmpty!59707 () Bool)

(declare-datatypes ((V!60051 0))(
  ( (V!60052 (val!19525 Int)) )
))
(declare-datatypes ((ValueCell!18411 0))(
  ( (ValueCellFull!18411 (v!22276 V!60051)) (EmptyCell!18411) )
))
(declare-datatypes ((array!104423 0))(
  ( (array!104424 (arr!50397 (Array (_ BitVec 32) ValueCell!18411)) (size!50948 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104423)

(declare-fun mapDefault!59707 () ValueCell!18411)

(assert (=> b!1564632 (= condMapEmpty!59707 (= (arr!50397 _values!487) ((as const (Array (_ BitVec 32) ValueCell!18411)) mapDefault!59707)))))

(declare-fun mapIsEmpty!59707 () Bool)

(assert (=> mapIsEmpty!59707 mapRes!59707))

(declare-fun b!1564633 () Bool)

(declare-fun e!872111 () Bool)

(assert (=> b!1564633 (= e!872111 false)))

(declare-fun lt!672026 () Bool)

(declare-datatypes ((array!104425 0))(
  ( (array!104426 (arr!50398 (Array (_ BitVec 32) (_ BitVec 64))) (size!50949 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104425)

(declare-datatypes ((List!36742 0))(
  ( (Nil!36739) (Cons!36738 (h!38185 (_ BitVec 64)) (t!51596 List!36742)) )
))
(declare-fun arrayNoDuplicates!0 (array!104425 (_ BitVec 32) List!36742) Bool)

(assert (=> b!1564633 (= lt!672026 (arrayNoDuplicates!0 _keys!637 #b00000000000000000000000000000000 Nil!36739))))

(declare-fun b!1564634 () Bool)

(declare-fun e!872110 () Bool)

(declare-fun tp_is_empty!38883 () Bool)

(assert (=> b!1564634 (= e!872110 tp_is_empty!38883)))

(declare-fun res!1069722 () Bool)

(assert (=> start!133868 (=> (not res!1069722) (not e!872111))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133868 (= res!1069722 (validMask!0 mask!947))))

(assert (=> start!133868 e!872111))

(assert (=> start!133868 true))

(declare-fun array_inv!39087 (array!104423) Bool)

(assert (=> start!133868 (and (array_inv!39087 _values!487) e!872107)))

(declare-fun array_inv!39088 (array!104425) Bool)

(assert (=> start!133868 (array_inv!39088 _keys!637)))

(declare-fun b!1564635 () Bool)

(declare-fun res!1069721 () Bool)

(assert (=> b!1564635 (=> (not res!1069721) (not e!872111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104425 (_ BitVec 32)) Bool)

(assert (=> b!1564635 (= res!1069721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!637 mask!947))))

(declare-fun b!1564636 () Bool)

(assert (=> b!1564636 (= e!872108 tp_is_empty!38883)))

(declare-fun b!1564637 () Bool)

(declare-fun res!1069720 () Bool)

(assert (=> b!1564637 (=> (not res!1069720) (not e!872111))))

(declare-fun extraKeys!434 () (_ BitVec 32))

(assert (=> b!1564637 (= res!1069720 (and (= (size!50948 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50949 _keys!637) (size!50948 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!59707 () Bool)

(declare-fun tp!113633 () Bool)

(assert (=> mapNonEmpty!59707 (= mapRes!59707 (and tp!113633 e!872110))))

(declare-fun mapKey!59707 () (_ BitVec 32))

(declare-fun mapValue!59707 () ValueCell!18411)

(declare-fun mapRest!59707 () (Array (_ BitVec 32) ValueCell!18411))

(assert (=> mapNonEmpty!59707 (= (arr!50397 _values!487) (store mapRest!59707 mapKey!59707 mapValue!59707))))

(assert (= (and start!133868 res!1069722) b!1564637))

(assert (= (and b!1564637 res!1069720) b!1564635))

(assert (= (and b!1564635 res!1069721) b!1564633))

(assert (= (and b!1564632 condMapEmpty!59707) mapIsEmpty!59707))

(assert (= (and b!1564632 (not condMapEmpty!59707)) mapNonEmpty!59707))

(get-info :version)

(assert (= (and mapNonEmpty!59707 ((_ is ValueCellFull!18411) mapValue!59707)) b!1564634))

(assert (= (and b!1564632 ((_ is ValueCellFull!18411) mapDefault!59707)) b!1564636))

(assert (= start!133868 b!1564632))

(declare-fun m!1439779 () Bool)

(assert (=> b!1564633 m!1439779))

(declare-fun m!1439781 () Bool)

(assert (=> start!133868 m!1439781))

(declare-fun m!1439783 () Bool)

(assert (=> start!133868 m!1439783))

(declare-fun m!1439785 () Bool)

(assert (=> start!133868 m!1439785))

(declare-fun m!1439787 () Bool)

(assert (=> b!1564635 m!1439787))

(declare-fun m!1439789 () Bool)

(assert (=> mapNonEmpty!59707 m!1439789))

(check-sat (not mapNonEmpty!59707) tp_is_empty!38883 (not b!1564633) (not b!1564635) (not start!133868))
(check-sat)
