; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82864 () Bool)

(assert start!82864)

(declare-fun b_free!18963 () Bool)

(declare-fun b_next!18963 () Bool)

(assert (=> start!82864 (= b_free!18963 (not b_next!18963))))

(declare-fun tp!66019 () Bool)

(declare-fun b_and!30469 () Bool)

(assert (=> start!82864 (= tp!66019 b_and!30469)))

(declare-fun b!966167 () Bool)

(declare-fun res!646833 () Bool)

(declare-fun e!544683 () Bool)

(assert (=> b!966167 (=> (not res!646833) (not e!544683))))

(declare-datatypes ((array!59605 0))(
  ( (array!59606 (arr!28667 (Array (_ BitVec 32) (_ BitVec 64))) (size!29147 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59605)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59605 (_ BitVec 32)) Bool)

(assert (=> b!966167 (= res!646833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966168 () Bool)

(assert (=> b!966168 (= e!544683 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun lt!431265 () Bool)

(declare-datatypes ((V!34011 0))(
  ( (V!34012 (val!10936 Int)) )
))
(declare-datatypes ((ValueCell!10404 0))(
  ( (ValueCellFull!10404 (v!13494 V!34011)) (EmptyCell!10404) )
))
(declare-datatypes ((array!59607 0))(
  ( (array!59608 (arr!28668 (Array (_ BitVec 32) ValueCell!10404)) (size!29148 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59607)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34011)

(declare-fun zeroValue!1342 () V!34011)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14146 0))(
  ( (tuple2!14147 (_1!7083 (_ BitVec 64)) (_2!7083 V!34011)) )
))
(declare-datatypes ((List!20022 0))(
  ( (Nil!20019) (Cons!20018 (h!21180 tuple2!14146) (t!28393 List!20022)) )
))
(declare-datatypes ((ListLongMap!12857 0))(
  ( (ListLongMap!12858 (toList!6444 List!20022)) )
))
(declare-fun contains!5495 (ListLongMap!12857 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3629 (array!59605 array!59607 (_ BitVec 32) (_ BitVec 32) V!34011 V!34011 (_ BitVec 32) Int) ListLongMap!12857)

(assert (=> b!966168 (= lt!431265 (contains!5495 (getCurrentListMap!3629 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28667 _keys!1686) i!803)))))

(declare-fun b!966169 () Bool)

(declare-fun res!646837 () Bool)

(assert (=> b!966169 (=> (not res!646837) (not e!544683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966169 (= res!646837 (validKeyInArray!0 (select (arr!28667 _keys!1686) i!803)))))

(declare-fun b!966170 () Bool)

(declare-fun res!646834 () Bool)

(assert (=> b!966170 (=> (not res!646834) (not e!544683))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966170 (= res!646834 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29147 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29147 _keys!1686))))))

(declare-fun b!966171 () Bool)

(declare-fun e!544682 () Bool)

(declare-fun e!544684 () Bool)

(declare-fun mapRes!34651 () Bool)

(assert (=> b!966171 (= e!544682 (and e!544684 mapRes!34651))))

(declare-fun condMapEmpty!34651 () Bool)

(declare-fun mapDefault!34651 () ValueCell!10404)

(assert (=> b!966171 (= condMapEmpty!34651 (= (arr!28668 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10404)) mapDefault!34651)))))

(declare-fun res!646835 () Bool)

(assert (=> start!82864 (=> (not res!646835) (not e!544683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82864 (= res!646835 (validMask!0 mask!2110))))

(assert (=> start!82864 e!544683))

(assert (=> start!82864 true))

(declare-fun array_inv!22105 (array!59607) Bool)

(assert (=> start!82864 (and (array_inv!22105 _values!1400) e!544682)))

(declare-fun array_inv!22106 (array!59605) Bool)

(assert (=> start!82864 (array_inv!22106 _keys!1686)))

(assert (=> start!82864 tp!66019))

(declare-fun tp_is_empty!21771 () Bool)

(assert (=> start!82864 tp_is_empty!21771))

(declare-fun mapIsEmpty!34651 () Bool)

(assert (=> mapIsEmpty!34651 mapRes!34651))

(declare-fun b!966172 () Bool)

(declare-fun res!646836 () Bool)

(assert (=> b!966172 (=> (not res!646836) (not e!544683))))

(declare-datatypes ((List!20023 0))(
  ( (Nil!20020) (Cons!20019 (h!21181 (_ BitVec 64)) (t!28394 List!20023)) )
))
(declare-fun arrayNoDuplicates!0 (array!59605 (_ BitVec 32) List!20023) Bool)

(assert (=> b!966172 (= res!646836 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20020))))

(declare-fun b!966173 () Bool)

(assert (=> b!966173 (= e!544684 tp_is_empty!21771)))

(declare-fun b!966174 () Bool)

(declare-fun e!544680 () Bool)

(assert (=> b!966174 (= e!544680 tp_is_empty!21771)))

(declare-fun mapNonEmpty!34651 () Bool)

(declare-fun tp!66018 () Bool)

(assert (=> mapNonEmpty!34651 (= mapRes!34651 (and tp!66018 e!544680))))

(declare-fun mapKey!34651 () (_ BitVec 32))

(declare-fun mapValue!34651 () ValueCell!10404)

(declare-fun mapRest!34651 () (Array (_ BitVec 32) ValueCell!10404))

(assert (=> mapNonEmpty!34651 (= (arr!28668 _values!1400) (store mapRest!34651 mapKey!34651 mapValue!34651))))

(declare-fun b!966175 () Bool)

(declare-fun res!646838 () Bool)

(assert (=> b!966175 (=> (not res!646838) (not e!544683))))

(assert (=> b!966175 (= res!646838 (and (= (size!29148 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29147 _keys!1686) (size!29148 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(assert (= (and start!82864 res!646835) b!966175))

(assert (= (and b!966175 res!646838) b!966167))

(assert (= (and b!966167 res!646833) b!966172))

(assert (= (and b!966172 res!646836) b!966170))

(assert (= (and b!966170 res!646834) b!966169))

(assert (= (and b!966169 res!646837) b!966168))

(assert (= (and b!966171 condMapEmpty!34651) mapIsEmpty!34651))

(assert (= (and b!966171 (not condMapEmpty!34651)) mapNonEmpty!34651))

(get-info :version)

(assert (= (and mapNonEmpty!34651 ((_ is ValueCellFull!10404) mapValue!34651)) b!966174))

(assert (= (and b!966171 ((_ is ValueCellFull!10404) mapDefault!34651)) b!966173))

(assert (= start!82864 b!966171))

(declare-fun m!895095 () Bool)

(assert (=> b!966172 m!895095))

(declare-fun m!895097 () Bool)

(assert (=> mapNonEmpty!34651 m!895097))

(declare-fun m!895099 () Bool)

(assert (=> b!966169 m!895099))

(assert (=> b!966169 m!895099))

(declare-fun m!895101 () Bool)

(assert (=> b!966169 m!895101))

(declare-fun m!895103 () Bool)

(assert (=> b!966168 m!895103))

(assert (=> b!966168 m!895099))

(assert (=> b!966168 m!895103))

(assert (=> b!966168 m!895099))

(declare-fun m!895105 () Bool)

(assert (=> b!966168 m!895105))

(declare-fun m!895107 () Bool)

(assert (=> start!82864 m!895107))

(declare-fun m!895109 () Bool)

(assert (=> start!82864 m!895109))

(declare-fun m!895111 () Bool)

(assert (=> start!82864 m!895111))

(declare-fun m!895113 () Bool)

(assert (=> b!966167 m!895113))

(check-sat (not b_next!18963) (not b!966172) b_and!30469 (not b!966169) (not mapNonEmpty!34651) (not b!966168) tp_is_empty!21771 (not b!966167) (not start!82864))
(check-sat b_and!30469 (not b_next!18963))
