; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82782 () Bool)

(assert start!82782)

(declare-fun b_free!18887 () Bool)

(declare-fun b_next!18887 () Bool)

(assert (=> start!82782 (= b_free!18887 (not b_next!18887))))

(declare-fun tp!65782 () Bool)

(declare-fun b_and!30393 () Bool)

(assert (=> start!82782 (= tp!65782 b_and!30393)))

(declare-fun b!965069 () Bool)

(declare-fun res!646107 () Bool)

(declare-fun e!544068 () Bool)

(assert (=> b!965069 (=> (not res!646107) (not e!544068))))

(declare-datatypes ((array!59445 0))(
  ( (array!59446 (arr!28587 (Array (_ BitVec 32) (_ BitVec 64))) (size!29067 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59445)

(declare-datatypes ((List!19962 0))(
  ( (Nil!19959) (Cons!19958 (h!21120 (_ BitVec 64)) (t!28333 List!19962)) )
))
(declare-fun arrayNoDuplicates!0 (array!59445 (_ BitVec 32) List!19962) Bool)

(assert (=> b!965069 (= res!646107 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19959))))

(declare-fun mapIsEmpty!34528 () Bool)

(declare-fun mapRes!34528 () Bool)

(assert (=> mapIsEmpty!34528 mapRes!34528))

(declare-fun b!965070 () Bool)

(assert (=> b!965070 (= e!544068 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33901 0))(
  ( (V!33902 (val!10895 Int)) )
))
(declare-datatypes ((ValueCell!10363 0))(
  ( (ValueCellFull!10363 (v!13453 V!33901)) (EmptyCell!10363) )
))
(declare-datatypes ((array!59447 0))(
  ( (array!59448 (arr!28588 (Array (_ BitVec 32) ValueCell!10363)) (size!29068 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59447)

(declare-fun minValue!1342 () V!33901)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun lt!431160 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun i!803 () (_ BitVec 32))

(declare-fun zeroValue!1342 () V!33901)

(declare-fun from!2084 () (_ BitVec 32))

(declare-datatypes ((tuple2!14086 0))(
  ( (tuple2!14087 (_1!7053 (_ BitVec 64)) (_2!7053 V!33901)) )
))
(declare-datatypes ((List!19963 0))(
  ( (Nil!19960) (Cons!19959 (h!21121 tuple2!14086) (t!28334 List!19963)) )
))
(declare-datatypes ((ListLongMap!12797 0))(
  ( (ListLongMap!12798 (toList!6414 List!19963)) )
))
(declare-fun contains!5468 (ListLongMap!12797 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3599 (array!59445 array!59447 (_ BitVec 32) (_ BitVec 32) V!33901 V!33901 (_ BitVec 32) Int) ListLongMap!12797)

(assert (=> b!965070 (= lt!431160 (contains!5468 (getCurrentListMap!3599 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28587 _keys!1686) i!803)))))

(declare-fun b!965071 () Bool)

(declare-fun res!646105 () Bool)

(assert (=> b!965071 (=> (not res!646105) (not e!544068))))

(assert (=> b!965071 (= res!646105 (and (= (size!29068 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!29067 _keys!1686) (size!29068 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!965072 () Bool)

(declare-fun res!646108 () Bool)

(assert (=> b!965072 (=> (not res!646108) (not e!544068))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!965072 (= res!646108 (validKeyInArray!0 (select (arr!28587 _keys!1686) i!803)))))

(declare-fun b!965073 () Bool)

(declare-fun e!544069 () Bool)

(declare-fun tp_is_empty!21689 () Bool)

(assert (=> b!965073 (= e!544069 tp_is_empty!21689)))

(declare-fun b!965074 () Bool)

(declare-fun e!544066 () Bool)

(declare-fun e!544067 () Bool)

(assert (=> b!965074 (= e!544066 (and e!544067 mapRes!34528))))

(declare-fun condMapEmpty!34528 () Bool)

(declare-fun mapDefault!34528 () ValueCell!10363)

