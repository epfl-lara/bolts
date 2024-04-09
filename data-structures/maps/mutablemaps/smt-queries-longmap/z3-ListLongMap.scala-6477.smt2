; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82732 () Bool)

(assert start!82732)

(declare-fun b_free!18837 () Bool)

(declare-fun b_next!18837 () Bool)

(assert (=> start!82732 (= b_free!18837 (not b_next!18837))))

(declare-fun tp!65631 () Bool)

(declare-fun b_and!30343 () Bool)

(assert (=> start!82732 (= tp!65631 b_and!30343)))

(declare-fun b!964274 () Bool)

(declare-fun res!645539 () Bool)

(declare-fun e!543654 () Bool)

(assert (=> b!964274 (=> (not res!645539) (not e!543654))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33835 0))(
  ( (V!33836 (val!10870 Int)) )
))
(declare-datatypes ((ValueCell!10338 0))(
  ( (ValueCellFull!10338 (v!13428 V!33835)) (EmptyCell!10338) )
))
(declare-datatypes ((array!59351 0))(
  ( (array!59352 (arr!28540 (Array (_ BitVec 32) ValueCell!10338)) (size!29020 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59351)

(declare-datatypes ((array!59353 0))(
  ( (array!59354 (arr!28541 (Array (_ BitVec 32) (_ BitVec 64))) (size!29021 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59353)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!964274 (= res!645539 (and (= (size!29020 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29021 _keys!1686) (size!29020 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!34453 () Bool)

(declare-fun mapRes!34453 () Bool)

(declare-fun tp!65632 () Bool)

(declare-fun e!543653 () Bool)

(assert (=> mapNonEmpty!34453 (= mapRes!34453 (and tp!65632 e!543653))))

(declare-fun mapValue!34453 () ValueCell!10338)

(declare-fun mapKey!34453 () (_ BitVec 32))

(declare-fun mapRest!34453 () (Array (_ BitVec 32) ValueCell!10338))

(assert (=> mapNonEmpty!34453 (= (arr!28540 _values!1400) (store mapRest!34453 mapKey!34453 mapValue!34453))))

(declare-fun b!964275 () Bool)

(declare-fun res!645534 () Bool)

(assert (=> b!964275 (=> (not res!645534) (not e!543654))))

(declare-fun minValue!1342 () V!33835)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33835)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14052 0))(
  ( (tuple2!14053 (_1!7036 (_ BitVec 64)) (_2!7036 V!33835)) )
))
(declare-datatypes ((List!19930 0))(
  ( (Nil!19927) (Cons!19926 (h!21088 tuple2!14052) (t!28301 List!19930)) )
))
(declare-datatypes ((ListLongMap!12763 0))(
  ( (ListLongMap!12764 (toList!6397 List!19930)) )
))
(declare-fun contains!5451 (ListLongMap!12763 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3582 (array!59353 array!59351 (_ BitVec 32) (_ BitVec 32) V!33835 V!33835 (_ BitVec 32) Int) ListLongMap!12763)

(assert (=> b!964275 (= res!645534 (contains!5451 (getCurrentListMap!3582 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28541 _keys!1686) i!803)))))

(declare-fun b!964276 () Bool)

(declare-fun res!645541 () Bool)

(assert (=> b!964276 (=> (not res!645541) (not e!543654))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59353 (_ BitVec 32)) Bool)

(assert (=> b!964276 (= res!645541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!964277 () Bool)

(declare-fun e!543655 () Bool)

(declare-fun e!543651 () Bool)

(assert (=> b!964277 (= e!543655 (and e!543651 mapRes!34453))))

(declare-fun condMapEmpty!34453 () Bool)

(declare-fun mapDefault!34453 () ValueCell!10338)

(assert (=> b!964277 (= condMapEmpty!34453 (= (arr!28540 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10338)) mapDefault!34453)))))

(declare-fun b!964278 () Bool)

(declare-fun e!543650 () Bool)

(assert (=> b!964278 (= e!543654 (not e!543650))))

(declare-fun res!645542 () Bool)

(assert (=> b!964278 (=> res!645542 e!543650)))

(assert (=> b!964278 (= res!645542 (or (bvslt (bvsub from!2084 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvsub from!2084 #b00000000000000000000000000000001) (size!29021 _keys!1686)) (bvslt i!803 (bvsub from!2084 #b00000000000000000000000000000001))))))

(assert (=> b!964278 (contains!5451 (getCurrentListMap!3582 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28541 _keys!1686) i!803))))

(declare-datatypes ((Unit!32249 0))(
  ( (Unit!32250) )
))
(declare-fun lt!431045 () Unit!32249)

(declare-fun lemmaInListMapFromThenInFromMinusOne!32 (array!59353 array!59351 (_ BitVec 32) (_ BitVec 32) V!33835 V!33835 (_ BitVec 32) (_ BitVec 32) Int) Unit!32249)

(assert (=> b!964278 (= lt!431045 (lemmaInListMapFromThenInFromMinusOne!32 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun b!964280 () Bool)

(declare-fun res!645538 () Bool)

(assert (=> b!964280 (=> (not res!645538) (not e!543654))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!964280 (= res!645538 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29021 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29021 _keys!1686))))))

(declare-fun mapIsEmpty!34453 () Bool)

(assert (=> mapIsEmpty!34453 mapRes!34453))

(declare-fun b!964281 () Bool)

(declare-fun res!645540 () Bool)

(assert (=> b!964281 (=> (not res!645540) (not e!543654))))

(declare-datatypes ((List!19931 0))(
  ( (Nil!19928) (Cons!19927 (h!21089 (_ BitVec 64)) (t!28302 List!19931)) )
))
(declare-fun arrayNoDuplicates!0 (array!59353 (_ BitVec 32) List!19931) Bool)

(assert (=> b!964281 (= res!645540 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19928))))

(declare-fun b!964282 () Bool)

(declare-fun res!645537 () Bool)

(assert (=> b!964282 (=> (not res!645537) (not e!543654))))

(assert (=> b!964282 (= res!645537 (bvsgt from!2084 newFrom!159))))

(declare-fun b!964283 () Bool)

(declare-fun res!645535 () Bool)

(assert (=> b!964283 (=> (not res!645535) (not e!543654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!964283 (= res!645535 (validKeyInArray!0 (select (arr!28541 _keys!1686) i!803)))))

(declare-fun b!964279 () Bool)

(assert (=> b!964279 (= e!543650 true)))

(assert (=> b!964279 (contains!5451 (getCurrentListMap!3582 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 newFrom!159 defaultEntry!1403) (select (arr!28541 _keys!1686) i!803))))

(declare-fun lt!431046 () Unit!32249)

(declare-fun lemmaInListMapFromThenInFromSmaller!25 (array!59353 array!59351 (_ BitVec 32) (_ BitVec 32) V!33835 V!33835 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Int) Unit!32249)

(assert (=> b!964279 (= lt!431046 (lemmaInListMapFromThenInFromSmaller!25 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) newFrom!159 i!803 defaultEntry!1403))))

(declare-fun res!645536 () Bool)

(assert (=> start!82732 (=> (not res!645536) (not e!543654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82732 (= res!645536 (validMask!0 mask!2110))))

(assert (=> start!82732 e!543654))

(assert (=> start!82732 true))

(declare-fun array_inv!22015 (array!59351) Bool)

(assert (=> start!82732 (and (array_inv!22015 _values!1400) e!543655)))

(declare-fun array_inv!22016 (array!59353) Bool)

(assert (=> start!82732 (array_inv!22016 _keys!1686)))

(assert (=> start!82732 tp!65631))

(declare-fun tp_is_empty!21639 () Bool)

(assert (=> start!82732 tp_is_empty!21639))

(declare-fun b!964284 () Bool)

(assert (=> b!964284 (= e!543651 tp_is_empty!21639)))

(declare-fun b!964285 () Bool)

(assert (=> b!964285 (= e!543653 tp_is_empty!21639)))

(assert (= (and start!82732 res!645536) b!964274))

(assert (= (and b!964274 res!645539) b!964276))

(assert (= (and b!964276 res!645541) b!964281))

(assert (= (and b!964281 res!645540) b!964280))

(assert (= (and b!964280 res!645538) b!964283))

(assert (= (and b!964283 res!645535) b!964275))

(assert (= (and b!964275 res!645534) b!964282))

(assert (= (and b!964282 res!645537) b!964278))

(assert (= (and b!964278 (not res!645542)) b!964279))

(assert (= (and b!964277 condMapEmpty!34453) mapIsEmpty!34453))

(assert (= (and b!964277 (not condMapEmpty!34453)) mapNonEmpty!34453))

(get-info :version)

(assert (= (and mapNonEmpty!34453 ((_ is ValueCellFull!10338) mapValue!34453)) b!964285))

(assert (= (and b!964277 ((_ is ValueCellFull!10338) mapDefault!34453)) b!964284))

(assert (= start!82732 b!964277))

(declare-fun m!893637 () Bool)

(assert (=> mapNonEmpty!34453 m!893637))

(declare-fun m!893639 () Bool)

(assert (=> b!964278 m!893639))

(declare-fun m!893641 () Bool)

(assert (=> b!964278 m!893641))

(assert (=> b!964278 m!893639))

(assert (=> b!964278 m!893641))

(declare-fun m!893643 () Bool)

(assert (=> b!964278 m!893643))

(declare-fun m!893645 () Bool)

(assert (=> b!964278 m!893645))

(declare-fun m!893647 () Bool)

(assert (=> b!964281 m!893647))

(assert (=> b!964283 m!893641))

(assert (=> b!964283 m!893641))

(declare-fun m!893649 () Bool)

(assert (=> b!964283 m!893649))

(declare-fun m!893651 () Bool)

(assert (=> start!82732 m!893651))

(declare-fun m!893653 () Bool)

(assert (=> start!82732 m!893653))

(declare-fun m!893655 () Bool)

(assert (=> start!82732 m!893655))

(declare-fun m!893657 () Bool)

(assert (=> b!964275 m!893657))

(assert (=> b!964275 m!893641))

(assert (=> b!964275 m!893657))

(assert (=> b!964275 m!893641))

(declare-fun m!893659 () Bool)

(assert (=> b!964275 m!893659))

(declare-fun m!893661 () Bool)

(assert (=> b!964276 m!893661))

(declare-fun m!893663 () Bool)

(assert (=> b!964279 m!893663))

(assert (=> b!964279 m!893641))

(assert (=> b!964279 m!893663))

(assert (=> b!964279 m!893641))

(declare-fun m!893665 () Bool)

(assert (=> b!964279 m!893665))

(declare-fun m!893667 () Bool)

(assert (=> b!964279 m!893667))

(check-sat (not b!964281) tp_is_empty!21639 (not b!964279) (not b!964278) (not b!964276) (not b!964275) b_and!30343 (not start!82732) (not b_next!18837) (not b!964283) (not mapNonEmpty!34453))
(check-sat b_and!30343 (not b_next!18837))
