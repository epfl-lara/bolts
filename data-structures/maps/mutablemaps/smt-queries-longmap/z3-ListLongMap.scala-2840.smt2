; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41014 () Bool)

(assert start!41014)

(declare-fun b_free!10941 () Bool)

(declare-fun b_next!10941 () Bool)

(assert (=> start!41014 (= b_free!10941 (not b_next!10941))))

(declare-fun tp!38649 () Bool)

(declare-fun b_and!19101 () Bool)

(assert (=> start!41014 (= tp!38649 b_and!19101)))

(declare-fun b!456648 () Bool)

(declare-fun e!266766 () Bool)

(declare-fun tp_is_empty!12279 () Bool)

(assert (=> b!456648 (= e!266766 tp_is_empty!12279)))

(declare-fun res!272664 () Bool)

(declare-fun e!266764 () Bool)

(assert (=> start!41014 (=> (not res!272664) (not e!266764))))

(declare-fun from!863 () (_ BitVec 32))

(declare-datatypes ((array!28325 0))(
  ( (array!28326 (arr!13603 (Array (_ BitVec 32) (_ BitVec 64))) (size!13955 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28325)

(assert (=> start!41014 (= res!272664 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13955 _keys!709))))))

(assert (=> start!41014 e!266764))

(assert (=> start!41014 tp_is_empty!12279))

(assert (=> start!41014 tp!38649))

(assert (=> start!41014 true))

(declare-datatypes ((V!17477 0))(
  ( (V!17478 (val!6184 Int)) )
))
(declare-datatypes ((ValueCell!5796 0))(
  ( (ValueCellFull!5796 (v!8446 V!17477)) (EmptyCell!5796) )
))
(declare-datatypes ((array!28327 0))(
  ( (array!28328 (arr!13604 (Array (_ BitVec 32) ValueCell!5796)) (size!13956 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28327)

(declare-fun e!266767 () Bool)

(declare-fun array_inv!9844 (array!28327) Bool)

(assert (=> start!41014 (and (array_inv!9844 _values!549) e!266767)))

(declare-fun array_inv!9845 (array!28325) Bool)

(assert (=> start!41014 (array_inv!9845 _keys!709)))

(declare-fun b!456649 () Bool)

(declare-fun res!272666 () Bool)

(assert (=> b!456649 (=> (not res!272666) (not e!266764))))

(declare-datatypes ((List!8213 0))(
  ( (Nil!8210) (Cons!8209 (h!9065 (_ BitVec 64)) (t!14049 List!8213)) )
))
(declare-fun arrayNoDuplicates!0 (array!28325 (_ BitVec 32) List!8213) Bool)

(assert (=> b!456649 (= res!272666 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8210))))

(declare-fun b!456650 () Bool)

(declare-fun res!272663 () Bool)

(declare-fun e!266762 () Bool)

(assert (=> b!456650 (=> (not res!272663) (not e!266762))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!456650 (= res!272663 (bvsle from!863 i!563))))

(declare-fun b!456651 () Bool)

(assert (=> b!456651 (= e!266764 e!266762)))

(declare-fun res!272654 () Bool)

(assert (=> b!456651 (=> (not res!272654) (not e!266762))))

(declare-fun lt!206634 () array!28325)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28325 (_ BitVec 32)) Bool)

(assert (=> b!456651 (= res!272654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!206634 mask!1025))))

(declare-fun k0!794 () (_ BitVec 64))

(assert (=> b!456651 (= lt!206634 (array!28326 (store (arr!13603 _keys!709) i!563 k0!794) (size!13955 _keys!709)))))

(declare-fun b!456652 () Bool)

(declare-fun mapRes!20059 () Bool)

(assert (=> b!456652 (= e!266767 (and e!266766 mapRes!20059))))

(declare-fun condMapEmpty!20059 () Bool)

(declare-fun mapDefault!20059 () ValueCell!5796)

(assert (=> b!456652 (= condMapEmpty!20059 (= (arr!13604 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5796)) mapDefault!20059)))))

(declare-fun mapIsEmpty!20059 () Bool)

(assert (=> mapIsEmpty!20059 mapRes!20059))

(declare-fun b!456653 () Bool)

(declare-fun e!266765 () Bool)

(declare-fun e!266763 () Bool)

(assert (=> b!456653 (= e!266765 (not e!266763))))

(declare-fun res!272657 () Bool)

(assert (=> b!456653 (=> res!272657 e!266763)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!456653 (= res!272657 (not (validKeyInArray!0 (select (arr!13603 _keys!709) from!863))))))

(declare-fun minValue!515 () V!17477)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!17477)

(declare-fun lt!206637 () array!28327)

(declare-fun v!412 () V!17477)

(declare-datatypes ((tuple2!8108 0))(
  ( (tuple2!8109 (_1!4064 (_ BitVec 64)) (_2!4064 V!17477)) )
))
(declare-datatypes ((List!8214 0))(
  ( (Nil!8211) (Cons!8210 (h!9066 tuple2!8108) (t!14050 List!8214)) )
))
(declare-datatypes ((ListLongMap!7035 0))(
  ( (ListLongMap!7036 (toList!3533 List!8214)) )
))
(declare-fun getCurrentListMapNoExtraKeys!1709 (array!28325 array!28327 (_ BitVec 32) (_ BitVec 32) V!17477 V!17477 (_ BitVec 32) Int) ListLongMap!7035)

(declare-fun +!1554 (ListLongMap!7035 tuple2!8108) ListLongMap!7035)

(assert (=> b!456653 (= (getCurrentListMapNoExtraKeys!1709 lt!206634 lt!206637 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (+!1554 (getCurrentListMapNoExtraKeys!1709 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557) (tuple2!8109 k0!794 v!412)))))

(declare-datatypes ((Unit!13233 0))(
  ( (Unit!13234) )
))
(declare-fun lt!206636 () Unit!13233)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!719 (array!28325 array!28327 (_ BitVec 32) (_ BitVec 32) V!17477 V!17477 (_ BitVec 32) (_ BitVec 64) V!17477 (_ BitVec 32) Int) Unit!13233)

(assert (=> b!456653 (= lt!206636 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!719 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!456654 () Bool)

(declare-fun res!272659 () Bool)

(assert (=> b!456654 (=> (not res!272659) (not e!266764))))

(assert (=> b!456654 (= res!272659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!456655 () Bool)

(assert (=> b!456655 (= e!266762 e!266765)))

(declare-fun res!272653 () Bool)

(assert (=> b!456655 (=> (not res!272653) (not e!266765))))

(assert (=> b!456655 (= res!272653 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun lt!206635 () ListLongMap!7035)

(assert (=> b!456655 (= lt!206635 (getCurrentListMapNoExtraKeys!1709 lt!206634 lt!206637 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!456655 (= lt!206637 (array!28328 (store (arr!13604 _values!549) i!563 (ValueCellFull!5796 v!412)) (size!13956 _values!549)))))

(declare-fun lt!206633 () ListLongMap!7035)

(assert (=> b!456655 (= lt!206633 (getCurrentListMapNoExtraKeys!1709 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun mapNonEmpty!20059 () Bool)

(declare-fun tp!38650 () Bool)

(declare-fun e!266761 () Bool)

(assert (=> mapNonEmpty!20059 (= mapRes!20059 (and tp!38650 e!266761))))

(declare-fun mapRest!20059 () (Array (_ BitVec 32) ValueCell!5796))

(declare-fun mapValue!20059 () ValueCell!5796)

(declare-fun mapKey!20059 () (_ BitVec 32))

(assert (=> mapNonEmpty!20059 (= (arr!13604 _values!549) (store mapRest!20059 mapKey!20059 mapValue!20059))))

(declare-fun b!456656 () Bool)

(assert (=> b!456656 (= e!266761 tp_is_empty!12279)))

(declare-fun b!456657 () Bool)

(declare-fun res!272658 () Bool)

(assert (=> b!456657 (=> (not res!272658) (not e!266764))))

(assert (=> b!456657 (= res!272658 (or (= (select (arr!13603 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13603 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!456658 () Bool)

(assert (=> b!456658 (= e!266763 (bvslt from!863 (size!13955 _keys!709)))))

(declare-fun b!456659 () Bool)

(declare-fun res!272662 () Bool)

(assert (=> b!456659 (=> (not res!272662) (not e!266764))))

(assert (=> b!456659 (= res!272662 (validKeyInArray!0 k0!794))))

(declare-fun b!456660 () Bool)

(declare-fun res!272665 () Bool)

(assert (=> b!456660 (=> (not res!272665) (not e!266764))))

(assert (=> b!456660 (= res!272665 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13955 _keys!709))))))

(declare-fun b!456661 () Bool)

(declare-fun res!272660 () Bool)

(assert (=> b!456661 (=> (not res!272660) (not e!266764))))

(declare-fun arrayContainsKey!0 (array!28325 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!456661 (= res!272660 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!456662 () Bool)

(declare-fun res!272661 () Bool)

(assert (=> b!456662 (=> (not res!272661) (not e!266762))))

(assert (=> b!456662 (= res!272661 (arrayNoDuplicates!0 lt!206634 #b00000000000000000000000000000000 Nil!8210))))

(declare-fun b!456663 () Bool)

(declare-fun res!272655 () Bool)

(assert (=> b!456663 (=> (not res!272655) (not e!266764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!456663 (= res!272655 (validMask!0 mask!1025))))

(declare-fun b!456664 () Bool)

(declare-fun res!272656 () Bool)

(assert (=> b!456664 (=> (not res!272656) (not e!266764))))

(assert (=> b!456664 (= res!272656 (and (= (size!13956 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13955 _keys!709) (size!13956 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(assert (= (and start!41014 res!272664) b!456663))

(assert (= (and b!456663 res!272655) b!456664))

(assert (= (and b!456664 res!272656) b!456654))

(assert (= (and b!456654 res!272659) b!456649))

(assert (= (and b!456649 res!272666) b!456660))

(assert (= (and b!456660 res!272665) b!456659))

(assert (= (and b!456659 res!272662) b!456657))

(assert (= (and b!456657 res!272658) b!456661))

(assert (= (and b!456661 res!272660) b!456651))

(assert (= (and b!456651 res!272654) b!456662))

(assert (= (and b!456662 res!272661) b!456650))

(assert (= (and b!456650 res!272663) b!456655))

(assert (= (and b!456655 res!272653) b!456653))

(assert (= (and b!456653 (not res!272657)) b!456658))

(assert (= (and b!456652 condMapEmpty!20059) mapIsEmpty!20059))

(assert (= (and b!456652 (not condMapEmpty!20059)) mapNonEmpty!20059))

(get-info :version)

(assert (= (and mapNonEmpty!20059 ((_ is ValueCellFull!5796) mapValue!20059)) b!456656))

(assert (= (and b!456652 ((_ is ValueCellFull!5796) mapDefault!20059)) b!456648))

(assert (= start!41014 b!456652))

(declare-fun m!440067 () Bool)

(assert (=> mapNonEmpty!20059 m!440067))

(declare-fun m!440069 () Bool)

(assert (=> b!456661 m!440069))

(declare-fun m!440071 () Bool)

(assert (=> start!41014 m!440071))

(declare-fun m!440073 () Bool)

(assert (=> start!41014 m!440073))

(declare-fun m!440075 () Bool)

(assert (=> b!456663 m!440075))

(declare-fun m!440077 () Bool)

(assert (=> b!456657 m!440077))

(declare-fun m!440079 () Bool)

(assert (=> b!456655 m!440079))

(declare-fun m!440081 () Bool)

(assert (=> b!456655 m!440081))

(declare-fun m!440083 () Bool)

(assert (=> b!456655 m!440083))

(declare-fun m!440085 () Bool)

(assert (=> b!456653 m!440085))

(declare-fun m!440087 () Bool)

(assert (=> b!456653 m!440087))

(declare-fun m!440089 () Bool)

(assert (=> b!456653 m!440089))

(assert (=> b!456653 m!440089))

(declare-fun m!440091 () Bool)

(assert (=> b!456653 m!440091))

(assert (=> b!456653 m!440085))

(declare-fun m!440093 () Bool)

(assert (=> b!456653 m!440093))

(declare-fun m!440095 () Bool)

(assert (=> b!456653 m!440095))

(declare-fun m!440097 () Bool)

(assert (=> b!456662 m!440097))

(declare-fun m!440099 () Bool)

(assert (=> b!456654 m!440099))

(declare-fun m!440101 () Bool)

(assert (=> b!456649 m!440101))

(declare-fun m!440103 () Bool)

(assert (=> b!456659 m!440103))

(declare-fun m!440105 () Bool)

(assert (=> b!456651 m!440105))

(declare-fun m!440107 () Bool)

(assert (=> b!456651 m!440107))

(check-sat (not b!456649) b_and!19101 (not b_next!10941) (not mapNonEmpty!20059) (not b!456659) tp_is_empty!12279 (not b!456653) (not b!456662) (not b!456651) (not b!456654) (not b!456655) (not start!41014) (not b!456661) (not b!456663))
(check-sat b_and!19101 (not b_next!10941))
