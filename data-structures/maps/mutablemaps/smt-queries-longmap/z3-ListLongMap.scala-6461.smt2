; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82636 () Bool)

(assert start!82636)

(declare-fun b_free!18741 () Bool)

(declare-fun b_next!18741 () Bool)

(assert (=> start!82636 (= b_free!18741 (not b_next!18741))))

(declare-fun tp!65343 () Bool)

(declare-fun b_and!30247 () Bool)

(assert (=> start!82636 (= tp!65343 b_and!30247)))

(declare-fun b!962649 () Bool)

(declare-fun res!644341 () Bool)

(declare-fun e!542889 () Bool)

(assert (=> b!962649 (=> (not res!644341) (not e!542889))))

(declare-datatypes ((array!59163 0))(
  ( (array!59164 (arr!28446 (Array (_ BitVec 32) (_ BitVec 64))) (size!28926 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59163)

(declare-datatypes ((List!19862 0))(
  ( (Nil!19859) (Cons!19858 (h!21020 (_ BitVec 64)) (t!28233 List!19862)) )
))
(declare-fun arrayNoDuplicates!0 (array!59163 (_ BitVec 32) List!19862) Bool)

(assert (=> b!962649 (= res!644341 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19859))))

(declare-fun b!962650 () Bool)

(declare-fun res!644342 () Bool)

(assert (=> b!962650 (=> (not res!644342) (not e!542889))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962650 (= res!644342 (bvsgt from!2084 newFrom!159))))

(declare-fun mapNonEmpty!34309 () Bool)

(declare-fun mapRes!34309 () Bool)

(declare-fun tp!65344 () Bool)

(declare-fun e!542893 () Bool)

(assert (=> mapNonEmpty!34309 (= mapRes!34309 (and tp!65344 e!542893))))

(declare-fun mapKey!34309 () (_ BitVec 32))

(declare-datatypes ((V!33707 0))(
  ( (V!33708 (val!10822 Int)) )
))
(declare-datatypes ((ValueCell!10290 0))(
  ( (ValueCellFull!10290 (v!13380 V!33707)) (EmptyCell!10290) )
))
(declare-fun mapValue!34309 () ValueCell!10290)

(declare-fun mapRest!34309 () (Array (_ BitVec 32) ValueCell!10290))

(declare-datatypes ((array!59165 0))(
  ( (array!59166 (arr!28447 (Array (_ BitVec 32) ValueCell!10290)) (size!28927 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59165)

(assert (=> mapNonEmpty!34309 (= (arr!28447 _values!1400) (store mapRest!34309 mapKey!34309 mapValue!34309))))

(declare-fun res!644346 () Bool)

(assert (=> start!82636 (=> (not res!644346) (not e!542889))))

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82636 (= res!644346 (validMask!0 mask!2110))))

(assert (=> start!82636 e!542889))

(assert (=> start!82636 true))

(declare-fun e!542891 () Bool)

(declare-fun array_inv!21963 (array!59165) Bool)

(assert (=> start!82636 (and (array_inv!21963 _values!1400) e!542891)))

(declare-fun array_inv!21964 (array!59163) Bool)

(assert (=> start!82636 (array_inv!21964 _keys!1686)))

(assert (=> start!82636 tp!65343))

(declare-fun tp_is_empty!21543 () Bool)

(assert (=> start!82636 tp_is_empty!21543))

(declare-fun b!962651 () Bool)

(assert (=> b!962651 (= e!542893 tp_is_empty!21543)))

(declare-fun b!962652 () Bool)

(declare-fun e!542892 () Bool)

(assert (=> b!962652 (= e!542891 (and e!542892 mapRes!34309))))

(declare-fun condMapEmpty!34309 () Bool)

(declare-fun mapDefault!34309 () ValueCell!10290)

(assert (=> b!962652 (= condMapEmpty!34309 (= (arr!28447 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10290)) mapDefault!34309)))))

(declare-fun b!962653 () Bool)

(declare-fun res!644348 () Bool)

(assert (=> b!962653 (=> (not res!644348) (not e!542889))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(assert (=> b!962653 (= res!644348 (and (= (size!28927 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28926 _keys!1686) (size!28927 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962654 () Bool)

(assert (=> b!962654 (= e!542889 (not true))))

(declare-fun minValue!1342 () V!33707)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33707)

(declare-datatypes ((tuple2!13978 0))(
  ( (tuple2!13979 (_1!6999 (_ BitVec 64)) (_2!6999 V!33707)) )
))
(declare-datatypes ((List!19863 0))(
  ( (Nil!19860) (Cons!19859 (h!21021 tuple2!13978) (t!28234 List!19863)) )
))
(declare-datatypes ((ListLongMap!12689 0))(
  ( (ListLongMap!12690 (toList!6360 List!19863)) )
))
(declare-fun contains!5414 (ListLongMap!12689 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3545 (array!59163 array!59165 (_ BitVec 32) (_ BitVec 32) V!33707 V!33707 (_ BitVec 32) Int) ListLongMap!12689)

(assert (=> b!962654 (contains!5414 (getCurrentListMap!3545 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28446 _keys!1686) i!803))))

(declare-datatypes ((Unit!32187 0))(
  ( (Unit!32188) )
))
(declare-fun lt!430860 () Unit!32187)

(declare-fun lemmaInListMapFromThenInFromMinusOne!2 (array!59163 array!59165 (_ BitVec 32) (_ BitVec 32) V!33707 V!33707 (_ BitVec 32) (_ BitVec 32) Int) Unit!32187)

(assert (=> b!962654 (= lt!430860 (lemmaInListMapFromThenInFromMinusOne!2 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun mapIsEmpty!34309 () Bool)

(assert (=> mapIsEmpty!34309 mapRes!34309))

(declare-fun b!962655 () Bool)

(declare-fun res!644343 () Bool)

(assert (=> b!962655 (=> (not res!644343) (not e!542889))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962655 (= res!644343 (validKeyInArray!0 (select (arr!28446 _keys!1686) i!803)))))

(declare-fun b!962656 () Bool)

(declare-fun res!644345 () Bool)

(assert (=> b!962656 (=> (not res!644345) (not e!542889))))

(assert (=> b!962656 (= res!644345 (contains!5414 (getCurrentListMap!3545 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28446 _keys!1686) i!803)))))

(declare-fun b!962657 () Bool)

(declare-fun res!644344 () Bool)

(assert (=> b!962657 (=> (not res!644344) (not e!542889))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59163 (_ BitVec 32)) Bool)

(assert (=> b!962657 (= res!644344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!962658 () Bool)

(declare-fun res!644347 () Bool)

(assert (=> b!962658 (=> (not res!644347) (not e!542889))))

(assert (=> b!962658 (= res!644347 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28926 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28926 _keys!1686))))))

(declare-fun b!962659 () Bool)

(assert (=> b!962659 (= e!542892 tp_is_empty!21543)))

(assert (= (and start!82636 res!644346) b!962653))

(assert (= (and b!962653 res!644348) b!962657))

(assert (= (and b!962657 res!644344) b!962649))

(assert (= (and b!962649 res!644341) b!962658))

(assert (= (and b!962658 res!644347) b!962655))

(assert (= (and b!962655 res!644343) b!962656))

(assert (= (and b!962656 res!644345) b!962650))

(assert (= (and b!962650 res!644342) b!962654))

(assert (= (and b!962652 condMapEmpty!34309) mapIsEmpty!34309))

(assert (= (and b!962652 (not condMapEmpty!34309)) mapNonEmpty!34309))

(get-info :version)

(assert (= (and mapNonEmpty!34309 ((_ is ValueCellFull!10290) mapValue!34309)) b!962651))

(assert (= (and b!962652 ((_ is ValueCellFull!10290) mapDefault!34309)) b!962659))

(assert (= start!82636 b!962652))

(declare-fun m!892311 () Bool)

(assert (=> start!82636 m!892311))

(declare-fun m!892313 () Bool)

(assert (=> start!82636 m!892313))

(declare-fun m!892315 () Bool)

(assert (=> start!82636 m!892315))

(declare-fun m!892317 () Bool)

(assert (=> b!962657 m!892317))

(declare-fun m!892319 () Bool)

(assert (=> b!962649 m!892319))

(declare-fun m!892321 () Bool)

(assert (=> b!962654 m!892321))

(declare-fun m!892323 () Bool)

(assert (=> b!962654 m!892323))

(assert (=> b!962654 m!892321))

(assert (=> b!962654 m!892323))

(declare-fun m!892325 () Bool)

(assert (=> b!962654 m!892325))

(declare-fun m!892327 () Bool)

(assert (=> b!962654 m!892327))

(assert (=> b!962655 m!892323))

(assert (=> b!962655 m!892323))

(declare-fun m!892329 () Bool)

(assert (=> b!962655 m!892329))

(declare-fun m!892331 () Bool)

(assert (=> b!962656 m!892331))

(assert (=> b!962656 m!892323))

(assert (=> b!962656 m!892331))

(assert (=> b!962656 m!892323))

(declare-fun m!892333 () Bool)

(assert (=> b!962656 m!892333))

(declare-fun m!892335 () Bool)

(assert (=> mapNonEmpty!34309 m!892335))

(check-sat (not b!962655) (not b!962649) (not mapNonEmpty!34309) b_and!30247 (not b!962654) (not b!962656) tp_is_empty!21543 (not start!82636) (not b_next!18741) (not b!962657))
(check-sat b_and!30247 (not b_next!18741))
