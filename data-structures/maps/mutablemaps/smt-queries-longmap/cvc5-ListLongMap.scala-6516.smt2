; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82964 () Bool)

(assert start!82964)

(declare-fun b_free!19063 () Bool)

(declare-fun b_next!19063 () Bool)

(assert (=> start!82964 (= b_free!19063 (not b_next!19063))))

(declare-fun tp!66318 () Bool)

(declare-fun b_and!30569 () Bool)

(assert (=> start!82964 (= tp!66318 b_and!30569)))

(declare-fun b!967728 () Bool)

(declare-fun res!647945 () Bool)

(declare-fun e!545434 () Bool)

(assert (=> b!967728 (=> (not res!647945) (not e!545434))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34145 0))(
  ( (V!34146 (val!10986 Int)) )
))
(declare-datatypes ((ValueCell!10454 0))(
  ( (ValueCellFull!10454 (v!13544 V!34145)) (EmptyCell!10454) )
))
(declare-datatypes ((array!59793 0))(
  ( (array!59794 (arr!28761 (Array (_ BitVec 32) ValueCell!10454)) (size!29241 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59793)

(declare-datatypes ((array!59795 0))(
  ( (array!59796 (arr!28762 (Array (_ BitVec 32) (_ BitVec 64))) (size!29242 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59795)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!967728 (= res!647945 (and (= (size!29241 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29242 _keys!1686) (size!29241 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!967730 () Bool)

(declare-fun res!647948 () Bool)

(assert (=> b!967730 (=> (not res!647948) (not e!545434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59795 (_ BitVec 32)) Bool)

(assert (=> b!967730 (= res!647948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!967731 () Bool)

(declare-fun res!647950 () Bool)

(assert (=> b!967731 (=> (not res!647950) (not e!545434))))

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!967731 (= res!647950 (bvsgt from!2084 newFrom!159))))

(declare-fun b!967732 () Bool)

(declare-fun res!647949 () Bool)

(assert (=> b!967732 (=> (not res!647949) (not e!545434))))

(declare-fun i!803 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!967732 (= res!647949 (validKeyInArray!0 (select (arr!28762 _keys!1686) i!803)))))

(declare-fun b!967733 () Bool)

(declare-fun res!647951 () Bool)

(assert (=> b!967733 (=> (not res!647951) (not e!545434))))

(assert (=> b!967733 (= res!647951 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29242 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29242 _keys!1686))))))

(declare-fun mapIsEmpty!34801 () Bool)

(declare-fun mapRes!34801 () Bool)

(assert (=> mapIsEmpty!34801 mapRes!34801))

(declare-fun b!967729 () Bool)

(assert (=> b!967729 (= e!545434 (not true))))

(declare-fun minValue!1342 () V!34145)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!34145)

(declare-datatypes ((tuple2!14220 0))(
  ( (tuple2!14221 (_1!7120 (_ BitVec 64)) (_2!7120 V!34145)) )
))
(declare-datatypes ((List!20094 0))(
  ( (Nil!20091) (Cons!20090 (h!21252 tuple2!14220) (t!28465 List!20094)) )
))
(declare-datatypes ((ListLongMap!12931 0))(
  ( (ListLongMap!12932 (toList!6481 List!20094)) )
))
(declare-fun contains!5532 (ListLongMap!12931 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3666 (array!59795 array!59793 (_ BitVec 32) (_ BitVec 32) V!34145 V!34145 (_ BitVec 32) Int) ListLongMap!12931)

(assert (=> b!967729 (contains!5532 (getCurrentListMap!3666 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 (bvsub from!2084 #b00000000000000000000000000000001) defaultEntry!1403) (select (arr!28762 _keys!1686) i!803))))

(declare-datatypes ((Unit!32313 0))(
  ( (Unit!32314) )
))
(declare-fun lt!431406 () Unit!32313)

(declare-fun lemmaInListMapFromThenInFromMinusOne!63 (array!59795 array!59793 (_ BitVec 32) (_ BitVec 32) V!34145 V!34145 (_ BitVec 32) (_ BitVec 32) Int) Unit!32313)

(assert (=> b!967729 (= lt!431406 (lemmaInListMapFromThenInFromMinusOne!63 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 i!803 defaultEntry!1403))))

(declare-fun res!647947 () Bool)

(assert (=> start!82964 (=> (not res!647947) (not e!545434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82964 (= res!647947 (validMask!0 mask!2110))))

(assert (=> start!82964 e!545434))

(assert (=> start!82964 true))

(declare-fun e!545432 () Bool)

(declare-fun array_inv!22161 (array!59793) Bool)

(assert (=> start!82964 (and (array_inv!22161 _values!1400) e!545432)))

(declare-fun array_inv!22162 (array!59795) Bool)

(assert (=> start!82964 (array_inv!22162 _keys!1686)))

(assert (=> start!82964 tp!66318))

(declare-fun tp_is_empty!21871 () Bool)

(assert (=> start!82964 tp_is_empty!21871))

(declare-fun mapNonEmpty!34801 () Bool)

(declare-fun tp!66319 () Bool)

(declare-fun e!545433 () Bool)

(assert (=> mapNonEmpty!34801 (= mapRes!34801 (and tp!66319 e!545433))))

(declare-fun mapValue!34801 () ValueCell!10454)

(declare-fun mapKey!34801 () (_ BitVec 32))

(declare-fun mapRest!34801 () (Array (_ BitVec 32) ValueCell!10454))

(assert (=> mapNonEmpty!34801 (= (arr!28761 _values!1400) (store mapRest!34801 mapKey!34801 mapValue!34801))))

(declare-fun b!967734 () Bool)

(assert (=> b!967734 (= e!545433 tp_is_empty!21871)))

(declare-fun b!967735 () Bool)

(declare-fun res!647946 () Bool)

(assert (=> b!967735 (=> (not res!647946) (not e!545434))))

(assert (=> b!967735 (= res!647946 (contains!5532 (getCurrentListMap!3666 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28762 _keys!1686) i!803)))))

(declare-fun b!967736 () Bool)

(declare-fun e!545431 () Bool)

(assert (=> b!967736 (= e!545432 (and e!545431 mapRes!34801))))

(declare-fun condMapEmpty!34801 () Bool)

(declare-fun mapDefault!34801 () ValueCell!10454)

