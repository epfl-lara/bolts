; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82588 () Bool)

(assert start!82588)

(declare-fun b_free!18693 () Bool)

(declare-fun b_next!18693 () Bool)

(assert (=> start!82588 (= b_free!18693 (not b_next!18693))))

(declare-fun tp!65200 () Bool)

(declare-fun b_and!30199 () Bool)

(assert (=> start!82588 (= tp!65200 b_and!30199)))

(declare-fun b!961991 () Bool)

(declare-fun e!542530 () Bool)

(declare-fun e!542533 () Bool)

(declare-fun mapRes!34237 () Bool)

(assert (=> b!961991 (= e!542530 (and e!542533 mapRes!34237))))

(declare-fun condMapEmpty!34237 () Bool)

(declare-datatypes ((V!33643 0))(
  ( (V!33644 (val!10798 Int)) )
))
(declare-datatypes ((ValueCell!10266 0))(
  ( (ValueCellFull!10266 (v!13356 V!33643)) (EmptyCell!10266) )
))
(declare-datatypes ((array!59075 0))(
  ( (array!59076 (arr!28402 (Array (_ BitVec 32) ValueCell!10266)) (size!28882 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59075)

(declare-fun mapDefault!34237 () ValueCell!10266)

(assert (=> b!961991 (= condMapEmpty!34237 (= (arr!28402 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10266)) mapDefault!34237)))))

(declare-fun b!961992 () Bool)

(declare-fun tp_is_empty!21495 () Bool)

(assert (=> b!961992 (= e!542533 tp_is_empty!21495)))

(declare-fun b!961994 () Bool)

(declare-fun e!542532 () Bool)

(assert (=> b!961994 (= e!542532 tp_is_empty!21495)))

(declare-fun mapNonEmpty!34237 () Bool)

(declare-fun tp!65199 () Bool)

(assert (=> mapNonEmpty!34237 (= mapRes!34237 (and tp!65199 e!542532))))

(declare-fun mapRest!34237 () (Array (_ BitVec 32) ValueCell!10266))

(declare-fun mapKey!34237 () (_ BitVec 32))

(declare-fun mapValue!34237 () ValueCell!10266)

(assert (=> mapNonEmpty!34237 (= (arr!28402 _values!1400) (store mapRest!34237 mapKey!34237 mapValue!34237))))

(declare-fun b!961995 () Bool)

(declare-fun res!643901 () Bool)

(declare-fun e!542531 () Bool)

(assert (=> b!961995 (=> (not res!643901) (not e!542531))))

(declare-datatypes ((array!59077 0))(
  ( (array!59078 (arr!28403 (Array (_ BitVec 32) (_ BitVec 64))) (size!28883 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59077)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59077 (_ BitVec 32)) Bool)

(assert (=> b!961995 (= res!643901 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961996 () Bool)

(declare-fun res!643902 () Bool)

(assert (=> b!961996 (=> (not res!643902) (not e!542531))))

(declare-fun newFrom!159 () (_ BitVec 32))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(assert (=> b!961996 (= res!643902 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!28883 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!28883 _keys!1686))))))

(declare-fun b!961997 () Bool)

(declare-fun res!643900 () Bool)

(assert (=> b!961997 (=> (not res!643900) (not e!542531))))

(declare-datatypes ((List!19836 0))(
  ( (Nil!19833) (Cons!19832 (h!20994 (_ BitVec 64)) (t!28207 List!19836)) )
))
(declare-fun arrayNoDuplicates!0 (array!59077 (_ BitVec 32) List!19836) Bool)

(assert (=> b!961997 (= res!643900 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19833))))

(declare-fun b!961998 () Bool)

(assert (=> b!961998 (= e!542531 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-fun minValue!1342 () V!33643)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33643)

(declare-fun lt!430788 () Bool)

(declare-datatypes ((tuple2!13952 0))(
  ( (tuple2!13953 (_1!6986 (_ BitVec 64)) (_2!6986 V!33643)) )
))
(declare-datatypes ((List!19837 0))(
  ( (Nil!19834) (Cons!19833 (h!20995 tuple2!13952) (t!28208 List!19837)) )
))
(declare-datatypes ((ListLongMap!12663 0))(
  ( (ListLongMap!12664 (toList!6347 List!19837)) )
))
(declare-fun contains!5401 (ListLongMap!12663 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3532 (array!59077 array!59075 (_ BitVec 32) (_ BitVec 32) V!33643 V!33643 (_ BitVec 32) Int) ListLongMap!12663)

(assert (=> b!961998 (= lt!430788 (contains!5401 (getCurrentListMap!3532 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28403 _keys!1686) i!803)))))

(declare-fun res!643899 () Bool)

(assert (=> start!82588 (=> (not res!643899) (not e!542531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82588 (= res!643899 (validMask!0 mask!2110))))

(assert (=> start!82588 e!542531))

(assert (=> start!82588 true))

(declare-fun array_inv!21933 (array!59075) Bool)

(assert (=> start!82588 (and (array_inv!21933 _values!1400) e!542530)))

(declare-fun array_inv!21934 (array!59077) Bool)

(assert (=> start!82588 (array_inv!21934 _keys!1686)))

(assert (=> start!82588 tp!65200))

(assert (=> start!82588 tp_is_empty!21495))

(declare-fun b!961993 () Bool)

(declare-fun res!643904 () Bool)

(assert (=> b!961993 (=> (not res!643904) (not e!542531))))

(assert (=> b!961993 (= res!643904 (and (= (size!28882 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28883 _keys!1686) (size!28882 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961999 () Bool)

(declare-fun res!643903 () Bool)

(assert (=> b!961999 (=> (not res!643903) (not e!542531))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!961999 (= res!643903 (validKeyInArray!0 (select (arr!28403 _keys!1686) i!803)))))

(declare-fun mapIsEmpty!34237 () Bool)

(assert (=> mapIsEmpty!34237 mapRes!34237))

(assert (= (and start!82588 res!643899) b!961993))

(assert (= (and b!961993 res!643904) b!961995))

(assert (= (and b!961995 res!643901) b!961997))

(assert (= (and b!961997 res!643900) b!961996))

(assert (= (and b!961996 res!643902) b!961999))

(assert (= (and b!961999 res!643903) b!961998))

(assert (= (and b!961991 condMapEmpty!34237) mapIsEmpty!34237))

(assert (= (and b!961991 (not condMapEmpty!34237)) mapNonEmpty!34237))

(get-info :version)

(assert (= (and mapNonEmpty!34237 ((_ is ValueCellFull!10266) mapValue!34237)) b!961994))

(assert (= (and b!961991 ((_ is ValueCellFull!10266) mapDefault!34237)) b!961992))

(assert (= start!82588 b!961991))

(declare-fun m!891825 () Bool)

(assert (=> b!961998 m!891825))

(declare-fun m!891827 () Bool)

(assert (=> b!961998 m!891827))

(assert (=> b!961998 m!891825))

(assert (=> b!961998 m!891827))

(declare-fun m!891829 () Bool)

(assert (=> b!961998 m!891829))

(assert (=> b!961999 m!891827))

(assert (=> b!961999 m!891827))

(declare-fun m!891831 () Bool)

(assert (=> b!961999 m!891831))

(declare-fun m!891833 () Bool)

(assert (=> b!961995 m!891833))

(declare-fun m!891835 () Bool)

(assert (=> mapNonEmpty!34237 m!891835))

(declare-fun m!891837 () Bool)

(assert (=> b!961997 m!891837))

(declare-fun m!891839 () Bool)

(assert (=> start!82588 m!891839))

(declare-fun m!891841 () Bool)

(assert (=> start!82588 m!891841))

(declare-fun m!891843 () Bool)

(assert (=> start!82588 m!891843))

(check-sat (not start!82588) (not mapNonEmpty!34237) b_and!30199 (not b!961998) (not b!961997) (not b!961995) tp_is_empty!21495 (not b_next!18693) (not b!961999))
(check-sat b_and!30199 (not b_next!18693))
