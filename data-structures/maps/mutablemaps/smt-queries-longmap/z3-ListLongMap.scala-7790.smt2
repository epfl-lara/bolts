; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97522 () Bool)

(assert start!97522)

(declare-fun b!1112689 () Bool)

(declare-fun e!634400 () Bool)

(declare-fun e!634402 () Bool)

(assert (=> b!1112689 (= e!634400 e!634402)))

(declare-fun res!742634 () Bool)

(assert (=> b!1112689 (=> (not res!742634) (not e!634402))))

(declare-datatypes ((array!72290 0))(
  ( (array!72291 (arr!34794 (Array (_ BitVec 32) (_ BitVec 64))) (size!35331 (_ BitVec 32))) )
))
(declare-fun lt!496538 () array!72290)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72290 (_ BitVec 32)) Bool)

(assert (=> b!1112689 (= res!742634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496538 mask!1564))))

(declare-fun _keys!1208 () array!72290)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1112689 (= lt!496538 (array!72291 (store (arr!34794 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35331 _keys!1208)))))

(declare-fun b!1112690 () Bool)

(declare-fun res!742640 () Bool)

(assert (=> b!1112690 (=> (not res!742640) (not e!634400))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1112690 (= res!742640 (= (select (arr!34794 _keys!1208) i!673) k0!934))))

(declare-fun b!1112691 () Bool)

(declare-fun e!634401 () Bool)

(declare-fun tp_is_empty!27717 () Bool)

(assert (=> b!1112691 (= e!634401 tp_is_empty!27717)))

(declare-fun b!1112692 () Bool)

(assert (=> b!1112692 (= e!634402 (not true))))

(declare-fun arrayContainsKey!0 (array!72290 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1112692 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36425 0))(
  ( (Unit!36426) )
))
(declare-fun lt!496539 () Unit!36425)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72290 (_ BitVec 64) (_ BitVec 32)) Unit!36425)

(assert (=> b!1112692 (= lt!496539 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1112694 () Bool)

(declare-fun res!742633 () Bool)

(assert (=> b!1112694 (=> (not res!742633) (not e!634400))))

(assert (=> b!1112694 (= res!742633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1112695 () Bool)

(declare-fun res!742636 () Bool)

(assert (=> b!1112695 (=> (not res!742636) (not e!634402))))

(declare-datatypes ((List!24405 0))(
  ( (Nil!24402) (Cons!24401 (h!25610 (_ BitVec 64)) (t!34893 List!24405)) )
))
(declare-fun arrayNoDuplicates!0 (array!72290 (_ BitVec 32) List!24405) Bool)

(assert (=> b!1112695 (= res!742636 (arrayNoDuplicates!0 lt!496538 #b00000000000000000000000000000000 Nil!24402))))

(declare-fun b!1112696 () Bool)

(declare-fun res!742637 () Bool)

(assert (=> b!1112696 (=> (not res!742637) (not e!634400))))

(assert (=> b!1112696 (= res!742637 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24402))))

(declare-fun b!1112697 () Bool)

(declare-fun res!742639 () Bool)

(assert (=> b!1112697 (=> (not res!742639) (not e!634400))))

(assert (=> b!1112697 (= res!742639 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35331 _keys!1208))))))

(declare-fun mapIsEmpty!43393 () Bool)

(declare-fun mapRes!43393 () Bool)

(assert (=> mapIsEmpty!43393 mapRes!43393))

(declare-fun mapNonEmpty!43393 () Bool)

(declare-fun tp!82638 () Bool)

(assert (=> mapNonEmpty!43393 (= mapRes!43393 (and tp!82638 e!634401))))

(declare-datatypes ((V!42083 0))(
  ( (V!42084 (val!13915 Int)) )
))
(declare-datatypes ((ValueCell!13149 0))(
  ( (ValueCellFull!13149 (v!16549 V!42083)) (EmptyCell!13149) )
))
(declare-fun mapRest!43393 () (Array (_ BitVec 32) ValueCell!13149))

(declare-fun mapValue!43393 () ValueCell!13149)

(declare-datatypes ((array!72292 0))(
  ( (array!72293 (arr!34795 (Array (_ BitVec 32) ValueCell!13149)) (size!35332 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72292)

(declare-fun mapKey!43393 () (_ BitVec 32))

(assert (=> mapNonEmpty!43393 (= (arr!34795 _values!996) (store mapRest!43393 mapKey!43393 mapValue!43393))))

(declare-fun b!1112693 () Bool)

(declare-fun res!742638 () Bool)

(assert (=> b!1112693 (=> (not res!742638) (not e!634400))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1112693 (= res!742638 (validMask!0 mask!1564))))

(declare-fun res!742641 () Bool)

(assert (=> start!97522 (=> (not res!742641) (not e!634400))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97522 (= res!742641 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35331 _keys!1208))))))

(assert (=> start!97522 e!634400))

(declare-fun array_inv!26628 (array!72290) Bool)

(assert (=> start!97522 (array_inv!26628 _keys!1208)))

(assert (=> start!97522 true))

(declare-fun e!634399 () Bool)

(declare-fun array_inv!26629 (array!72292) Bool)

(assert (=> start!97522 (and (array_inv!26629 _values!996) e!634399)))

(declare-fun b!1112698 () Bool)

(declare-fun e!634403 () Bool)

(assert (=> b!1112698 (= e!634403 tp_is_empty!27717)))

(declare-fun b!1112699 () Bool)

(declare-fun res!742632 () Bool)

(assert (=> b!1112699 (=> (not res!742632) (not e!634400))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1112699 (= res!742632 (validKeyInArray!0 k0!934))))

(declare-fun b!1112700 () Bool)

(declare-fun res!742635 () Bool)

(assert (=> b!1112700 (=> (not res!742635) (not e!634400))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1112700 (= res!742635 (and (= (size!35332 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35331 _keys!1208) (size!35332 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1112701 () Bool)

(assert (=> b!1112701 (= e!634399 (and e!634403 mapRes!43393))))

(declare-fun condMapEmpty!43393 () Bool)

(declare-fun mapDefault!43393 () ValueCell!13149)

(assert (=> b!1112701 (= condMapEmpty!43393 (= (arr!34795 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13149)) mapDefault!43393)))))

(assert (= (and start!97522 res!742641) b!1112693))

(assert (= (and b!1112693 res!742638) b!1112700))

(assert (= (and b!1112700 res!742635) b!1112694))

(assert (= (and b!1112694 res!742633) b!1112696))

(assert (= (and b!1112696 res!742637) b!1112697))

(assert (= (and b!1112697 res!742639) b!1112699))

(assert (= (and b!1112699 res!742632) b!1112690))

(assert (= (and b!1112690 res!742640) b!1112689))

(assert (= (and b!1112689 res!742634) b!1112695))

(assert (= (and b!1112695 res!742636) b!1112692))

(assert (= (and b!1112701 condMapEmpty!43393) mapIsEmpty!43393))

(assert (= (and b!1112701 (not condMapEmpty!43393)) mapNonEmpty!43393))

(get-info :version)

(assert (= (and mapNonEmpty!43393 ((_ is ValueCellFull!13149) mapValue!43393)) b!1112691))

(assert (= (and b!1112701 ((_ is ValueCellFull!13149) mapDefault!43393)) b!1112698))

(assert (= start!97522 b!1112701))

(declare-fun m!1030251 () Bool)

(assert (=> b!1112692 m!1030251))

(declare-fun m!1030253 () Bool)

(assert (=> b!1112692 m!1030253))

(declare-fun m!1030255 () Bool)

(assert (=> mapNonEmpty!43393 m!1030255))

(declare-fun m!1030257 () Bool)

(assert (=> b!1112694 m!1030257))

(declare-fun m!1030259 () Bool)

(assert (=> b!1112695 m!1030259))

(declare-fun m!1030261 () Bool)

(assert (=> start!97522 m!1030261))

(declare-fun m!1030263 () Bool)

(assert (=> start!97522 m!1030263))

(declare-fun m!1030265 () Bool)

(assert (=> b!1112690 m!1030265))

(declare-fun m!1030267 () Bool)

(assert (=> b!1112696 m!1030267))

(declare-fun m!1030269 () Bool)

(assert (=> b!1112689 m!1030269))

(declare-fun m!1030271 () Bool)

(assert (=> b!1112689 m!1030271))

(declare-fun m!1030273 () Bool)

(assert (=> b!1112699 m!1030273))

(declare-fun m!1030275 () Bool)

(assert (=> b!1112693 m!1030275))

(check-sat (not b!1112692) (not b!1112695) tp_is_empty!27717 (not b!1112689) (not start!97522) (not mapNonEmpty!43393) (not b!1112696) (not b!1112693) (not b!1112694) (not b!1112699))
(check-sat)
