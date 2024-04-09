; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82872 () Bool)

(assert start!82872)

(declare-fun b_free!18971 () Bool)

(declare-fun b_next!18971 () Bool)

(assert (=> start!82872 (= b_free!18971 (not b_next!18971))))

(declare-fun tp!66042 () Bool)

(declare-fun b_and!30477 () Bool)

(assert (=> start!82872 (= tp!66042 b_and!30477)))

(declare-fun mapIsEmpty!34663 () Bool)

(declare-fun mapRes!34663 () Bool)

(assert (=> mapIsEmpty!34663 mapRes!34663))

(declare-fun b!966275 () Bool)

(declare-fun e!544744 () Bool)

(assert (=> b!966275 (= e!544744 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!34021 0))(
  ( (V!34022 (val!10940 Int)) )
))
(declare-datatypes ((ValueCell!10408 0))(
  ( (ValueCellFull!10408 (v!13498 V!34021)) (EmptyCell!10408) )
))
(declare-datatypes ((array!59621 0))(
  ( (array!59622 (arr!28675 (Array (_ BitVec 32) ValueCell!10408)) (size!29155 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59621)

(declare-datatypes ((array!59623 0))(
  ( (array!59624 (arr!28676 (Array (_ BitVec 32) (_ BitVec 64))) (size!29156 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59623)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun minValue!1342 () V!34021)

(declare-fun lt!431277 () Bool)

(declare-fun zeroValue!1342 () V!34021)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14154 0))(
  ( (tuple2!14155 (_1!7087 (_ BitVec 64)) (_2!7087 V!34021)) )
))
(declare-datatypes ((List!20029 0))(
  ( (Nil!20026) (Cons!20025 (h!21187 tuple2!14154) (t!28400 List!20029)) )
))
(declare-datatypes ((ListLongMap!12865 0))(
  ( (ListLongMap!12866 (toList!6448 List!20029)) )
))
(declare-fun contains!5499 (ListLongMap!12865 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3633 (array!59623 array!59621 (_ BitVec 32) (_ BitVec 32) V!34021 V!34021 (_ BitVec 32) Int) ListLongMap!12865)

(assert (=> b!966275 (= lt!431277 (contains!5499 (getCurrentListMap!3633 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28676 _keys!1686) i!803)))))

(declare-fun b!966276 () Bool)

(declare-fun res!646907 () Bool)

(assert (=> b!966276 (=> (not res!646907) (not e!544744))))

(declare-datatypes ((List!20030 0))(
  ( (Nil!20027) (Cons!20026 (h!21188 (_ BitVec 64)) (t!28401 List!20030)) )
))
(declare-fun arrayNoDuplicates!0 (array!59623 (_ BitVec 32) List!20030) Bool)

(assert (=> b!966276 (= res!646907 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!20027))))

(declare-fun b!966277 () Bool)

(declare-fun res!646908 () Bool)

(assert (=> b!966277 (=> (not res!646908) (not e!544744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!966277 (= res!646908 (validKeyInArray!0 (select (arr!28676 _keys!1686) i!803)))))

(declare-fun b!966278 () Bool)

(declare-fun res!646906 () Bool)

(assert (=> b!966278 (=> (not res!646906) (not e!544744))))

(assert (=> b!966278 (= res!646906 (and (= (size!29155 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29156 _keys!1686) (size!29155 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!966279 () Bool)

(declare-fun res!646909 () Bool)

(assert (=> b!966279 (=> (not res!646909) (not e!544744))))

(declare-fun newFrom!159 () (_ BitVec 32))

(assert (=> b!966279 (= res!646909 (and (bvsge from!2084 #b00000000000000000000000000000000) (bvslt from!2084 (size!29156 _keys!1686)) (bvsge newFrom!159 #b00000000000000000000000000000000) (bvsle newFrom!159 from!2084) (bvsge i!803 from!2084) (bvslt i!803 (size!29156 _keys!1686))))))

(declare-fun b!966280 () Bool)

(declare-fun e!544740 () Bool)

(declare-fun tp_is_empty!21779 () Bool)

(assert (=> b!966280 (= e!544740 tp_is_empty!21779)))

(declare-fun b!966281 () Bool)

(declare-fun e!544741 () Bool)

(assert (=> b!966281 (= e!544741 (and e!544740 mapRes!34663))))

(declare-fun condMapEmpty!34663 () Bool)

(declare-fun mapDefault!34663 () ValueCell!10408)

