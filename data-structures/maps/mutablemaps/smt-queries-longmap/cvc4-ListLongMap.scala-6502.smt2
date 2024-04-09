; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82884 () Bool)

(assert start!82884)

(declare-fun b_free!18983 () Bool)

(declare-fun b_next!18983 () Bool)

(assert (=> start!82884 (= b_free!18983 (not b_next!18983))))

(declare-fun tp!66079 () Bool)

(declare-fun b_and!30489 () Bool)

(assert (=> start!82884 (= tp!66079 b_and!30489)))

(declare-fun b!966445 () Bool)

(declare-fun res!647023 () Bool)

(declare-fun e!544833 () Bool)

(assert (=> b!966445 (=> (not res!647023) (not e!544833))))

(declare-datatypes ((array!59645 0))(
  ( (array!59646 (arr!28687 (Array (_ BitVec 32) (_ BitVec 64))) (size!29167 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59645)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!59645 (_ BitVec 32)) Bool)

(assert (=> b!966445 (= res!647023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!966446 () Bool)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966446 (= e!544833 (and (bvsgt from!2084 newFrom!159) (bvsle from!2084 #b00000000000000000000000000000000)))))

(declare-fun b!966447 () Bool)

(declare-fun e!544834 () Bool)

(declare-fun tp_is_empty!21791 () Bool)

(assert (=> b!966447 (= e!544834 tp_is_empty!21791)))

(declare-fun mapIsEmpty!34681 () Bool)

(declare-fun mapRes!34681 () Bool)

(assert (=> mapIsEmpty!34681 mapRes!34681))

(declare-fun b!966448 () Bool)

(declare-fun res!647027 () Bool)

(assert (=> b!966448 (=> (not res!647027) (not e!544833))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34037 0))(
  ( (V!34038 (val!10946 Int)) )
))
(declare-datatypes ((ValueCell!10414 0))(
  ( (ValueCellFull!10414 (v!13504 V!34037)) (EmptyCell!10414) )
))
(declare-datatypes ((array!59647 0))(
  ( (array!59648 (arr!28688 (Array (_ BitVec 32) ValueCell!10414)) (size!29168 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59647)

(assert (=> b!966448 (= res!647027 (and (= (size!29168 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29167 _keys!1686) (size!29168 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966449 () Bool)

(declare-fun e!544830 () Bool)

(assert (=> b!966449 (= e!544830 tp_is_empty!21791)))

(declare-fun b!966450 () Bool)

(declare-fun res!647024 () Bool)

(assert (=> b!966450 (=> (not res!647024) (not e!544833))))

(declare-fun minValue!1342 () V!34037)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!34037)

(declare-fun defaultEntry!1403 () Int)

(declare-datatypes ((tuple2!14162 0))(
  ( (tuple2!14163 (_1!7091 (_ BitVec 64)) (_2!7091 V!34037)) )
))
(declare-datatypes ((List!20037 0))(
  ( (Nil!20034) (Cons!20033 (h!21195 tuple2!14162) (t!28408 List!20037)) )
))
(declare-datatypes ((ListLongMap!12873 0))(
  ( (ListLongMap!12874 (toList!6452 List!20037)) )
))
(declare-fun contains!5503 (ListLongMap!12873 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3637 (array!59645 array!59647 (_ BitVec 32) (_ BitVec 32) V!34037 V!34037 (_ BitVec 32) Int) ListLongMap!12873)

(assert (=> b!966450 (= res!647024 (contains!5503 (getCurrentListMap!3637 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28687 _keys!1686) i!803)))))

(declare-fun b!966451 () Bool)

(declare-fun res!647025 () Bool)

(assert (=> b!966451 (=> (not res!647025) (not e!544833))))

(assert (=> b!966451 (= res!647025 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29167 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29167 _keys!1686))))))

(declare-fun b!966452 () Bool)

(declare-fun res!647022 () Bool)

(assert (=> b!966452 (=> (not res!647022) (not e!544833))))

(declare-datatypes ((List!20038 0))(
  ( (Nil!20035) (Cons!20034 (h!21196 (_ BitVec 64)) (t!28409 List!20038)) )
))
(declare-fun arrayNoDuplicates!0 (array!59645 (_ BitVec 32) List!20038) Bool)

(assert (=> b!966452 (= res!647022 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20035))))

(declare-fun mapNonEmpty!34681 () Bool)

(declare-fun tp!66078 () Bool)

(assert (=> mapNonEmpty!34681 (= mapRes!34681 (and tp!66078 e!544830))))

(declare-fun mapKey!34681 () (_ BitVec 32))

(declare-fun mapValue!34681 () ValueCell!10414)

(declare-fun mapRest!34681 () (Array (_ BitVec 32) ValueCell!10414))

(assert (=> mapNonEmpty!34681 (= (arr!28688 _values!1400) (store mapRest!34681 mapKey!34681 mapValue!34681))))

(declare-fun b!966453 () Bool)

(declare-fun res!647026 () Bool)

(assert (=> b!966453 (=> (not res!647026) (not e!544833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966453 (= res!647026 (validKeyInArray!0 (select (arr!28687 _keys!1686) i!803)))))

(declare-fun res!647021 () Bool)

(assert (=> start!82884 (=> (not res!647021) (not e!544833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82884 (= res!647021 (validMask!0 mask!2110))))

(assert (=> start!82884 e!544833))

(assert (=> start!82884 true))

(declare-fun e!544832 () Bool)

(declare-fun array_inv!22117 (array!59647) Bool)

(assert (=> start!82884 (and (array_inv!22117 _values!1400) e!544832)))

(declare-fun array_inv!22118 (array!59645) Bool)

(assert (=> start!82884 (array_inv!22118 _keys!1686)))

(assert (=> start!82884 tp!66079))

(assert (=> start!82884 tp_is_empty!21791))

(declare-fun b!966454 () Bool)

(assert (=> b!966454 (= e!544832 (and e!544834 mapRes!34681))))

(declare-fun condMapEmpty!34681 () Bool)

(declare-fun mapDefault!34681 () ValueCell!10414)

