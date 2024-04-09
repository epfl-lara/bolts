; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82630 () Bool)

(assert start!82630)

(declare-fun b_free!18735 () Bool)

(declare-fun b_next!18735 () Bool)

(assert (=> start!82630 (= b_free!18735 (not b_next!18735))))

(declare-fun tp!65326 () Bool)

(declare-fun b_and!30241 () Bool)

(assert (=> start!82630 (= tp!65326 b_and!30241)))

(declare-fun b!962558 () Bool)

(declare-fun e!542848 () Bool)

(assert (=> b!962558 (= e!542848 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33699 0))(
  ( (V!33700 (val!10819 Int)) )
))
(declare-datatypes ((ValueCell!10287 0))(
  ( (ValueCellFull!10287 (v!13377 V!33699)) (EmptyCell!10287) )
))
(declare-datatypes ((array!59151 0))(
  ( (array!59152 (arr!28440 (Array (_ BitVec 32) ValueCell!10287)) (size!28920 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59151)

(declare-datatypes ((array!59153 0))(
  ( (array!59154 (arr!28441 (Array (_ BitVec 32) (_ BitVec 64))) (size!28921 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59153)

(declare-fun minValue!1342 () V!33699)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun lt!430851 () Bool)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33699)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!13972 0))(
  ( (tuple2!13973 (_1!6996 (_ BitVec 64)) (_2!6996 V!33699)) )
))
(declare-datatypes ((List!19857 0))(
  ( (Nil!19854) (Cons!19853 (h!21015 tuple2!13972) (t!28228 List!19857)) )
))
(declare-datatypes ((ListLongMap!12683 0))(
  ( (ListLongMap!12684 (toList!6357 List!19857)) )
))
(declare-fun contains!5411 (ListLongMap!12683 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3542 (array!59153 array!59151 (_ BitVec 32) (_ BitVec 32) V!33699 V!33699 (_ BitVec 32) Int) ListLongMap!12683)

(assert (=> b!962558 (= lt!430851 (contains!5411 (getCurrentListMap!3542 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28441 _keys!1686) i!803)))))

(declare-fun b!962559 () Bool)

(declare-fun res!644282 () Bool)

(assert (=> b!962559 (=> (not res!644282) (not e!542848))))

(assert (=> b!962559 (= res!644282 (and (= (size!28920 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28921 _keys!1686) (size!28920 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!962560 () Bool)

(declare-fun res!644281 () Bool)

(assert (=> b!962560 (=> (not res!644281) (not e!542848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59153 (_ BitVec 32)) Bool)

(assert (=> b!962560 (= res!644281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun mapIsEmpty!34300 () Bool)

(declare-fun mapRes!34300 () Bool)

(assert (=> mapIsEmpty!34300 mapRes!34300))

(declare-fun b!962561 () Bool)

(declare-fun res!644279 () Bool)

(assert (=> b!962561 (=> (not res!644279) (not e!542848))))

(declare-datatypes ((List!19858 0))(
  ( (Nil!19855) (Cons!19854 (h!21016 (_ BitVec 64)) (t!28229 List!19858)) )
))
(declare-fun arrayNoDuplicates!0 (array!59153 (_ BitVec 32) List!19858) Bool)

(assert (=> b!962561 (= res!644279 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19855))))

(declare-fun res!644277 () Bool)

(assert (=> start!82630 (=> (not res!644277) (not e!542848))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82630 (= res!644277 (validMask!0 mask!2110))))

(assert (=> start!82630 e!542848))

(assert (=> start!82630 true))

(declare-fun e!542844 () Bool)

(declare-fun array_inv!21957 (array!59151) Bool)

(assert (=> start!82630 (and (array_inv!21957 _values!1400) e!542844)))

(declare-fun array_inv!21958 (array!59153) Bool)

(assert (=> start!82630 (array_inv!21958 _keys!1686)))

(assert (=> start!82630 tp!65326))

(declare-fun tp_is_empty!21537 () Bool)

(assert (=> start!82630 tp_is_empty!21537))

(declare-fun b!962562 () Bool)

(declare-fun res!644278 () Bool)

(assert (=> b!962562 (=> (not res!644278) (not e!542848))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!962562 (= res!644278 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28921 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28921 _keys!1686))))))

(declare-fun b!962563 () Bool)

(declare-fun e!542847 () Bool)

(assert (=> b!962563 (= e!542847 tp_is_empty!21537)))

(declare-fun b!962564 () Bool)

(declare-fun e!542846 () Bool)

(assert (=> b!962564 (= e!542846 tp_is_empty!21537)))

(declare-fun b!962565 () Bool)

(declare-fun res!644280 () Bool)

(assert (=> b!962565 (=> (not res!644280) (not e!542848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!962565 (= res!644280 (validKeyInArray!0 (select (arr!28441 _keys!1686) i!803)))))

(declare-fun b!962566 () Bool)

(assert (=> b!962566 (= e!542844 (and e!542846 mapRes!34300))))

(declare-fun condMapEmpty!34300 () Bool)

(declare-fun mapDefault!34300 () ValueCell!10287)

(assert (=> b!962566 (= condMapEmpty!34300 (= (arr!28440 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10287)) mapDefault!34300)))))

(declare-fun mapNonEmpty!34300 () Bool)

(declare-fun tp!65325 () Bool)

(assert (=> mapNonEmpty!34300 (= mapRes!34300 (and tp!65325 e!542847))))

(declare-fun mapValue!34300 () ValueCell!10287)

(declare-fun mapRest!34300 () (Array (_ BitVec 32) ValueCell!10287))

(declare-fun mapKey!34300 () (_ BitVec 32))

(assert (=> mapNonEmpty!34300 (= (arr!28440 _values!1400) (store mapRest!34300 mapKey!34300 mapValue!34300))))

(assert (= (and start!82630 res!644277) b!962559))

(assert (= (and b!962559 res!644282) b!962560))

(assert (= (and b!962560 res!644281) b!962561))

(assert (= (and b!962561 res!644279) b!962562))

(assert (= (and b!962562 res!644278) b!962565))

(assert (= (and b!962565 res!644280) b!962558))

(assert (= (and b!962566 condMapEmpty!34300) mapIsEmpty!34300))

(assert (= (and b!962566 (not condMapEmpty!34300)) mapNonEmpty!34300))

(get-info :version)

(assert (= (and mapNonEmpty!34300 ((_ is ValueCellFull!10287) mapValue!34300)) b!962563))

(assert (= (and b!962566 ((_ is ValueCellFull!10287) mapDefault!34300)) b!962564))

(assert (= start!82630 b!962566))

(declare-fun m!892245 () Bool)

(assert (=> b!962565 m!892245))

(assert (=> b!962565 m!892245))

(declare-fun m!892247 () Bool)

(assert (=> b!962565 m!892247))

(declare-fun m!892249 () Bool)

(assert (=> b!962561 m!892249))

(declare-fun m!892251 () Bool)

(assert (=> b!962558 m!892251))

(assert (=> b!962558 m!892245))

(assert (=> b!962558 m!892251))

(assert (=> b!962558 m!892245))

(declare-fun m!892253 () Bool)

(assert (=> b!962558 m!892253))

(declare-fun m!892255 () Bool)

(assert (=> b!962560 m!892255))

(declare-fun m!892257 () Bool)

(assert (=> start!82630 m!892257))

(declare-fun m!892259 () Bool)

(assert (=> start!82630 m!892259))

(declare-fun m!892261 () Bool)

(assert (=> start!82630 m!892261))

(declare-fun m!892263 () Bool)

(assert (=> mapNonEmpty!34300 m!892263))

(check-sat (not b!962561) (not mapNonEmpty!34300) (not start!82630) (not b!962560) b_and!30241 (not b_next!18735) tp_is_empty!21537 (not b!962565) (not b!962558))
(check-sat b_and!30241 (not b_next!18735))
