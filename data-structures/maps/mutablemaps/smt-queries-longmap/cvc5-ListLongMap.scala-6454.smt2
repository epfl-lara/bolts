; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82592 () Bool)

(assert start!82592)

(declare-fun b_free!18697 () Bool)

(declare-fun b_next!18697 () Bool)

(assert (=> start!82592 (= b_free!18697 (not b_next!18697))))

(declare-fun tp!65212 () Bool)

(declare-fun b_and!30203 () Bool)

(assert (=> start!82592 (= tp!65212 b_and!30203)))

(declare-fun b!962045 () Bool)

(declare-fun e!542562 () Bool)

(assert (=> b!962045 (= e!542562 false)))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33649 0))(
  ( (V!33650 (val!10800 Int)) )
))
(declare-datatypes ((ValueCell!10268 0))(
  ( (ValueCellFull!10268 (v!13358 V!33649)) (EmptyCell!10268) )
))
(declare-datatypes ((array!59083 0))(
  ( (array!59084 (arr!28406 (Array (_ BitVec 32) ValueCell!10268)) (size!28886 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59083)

(declare-datatypes ((array!59085 0))(
  ( (array!59086 (arr!28407 (Array (_ BitVec 32) (_ BitVec 64))) (size!28887 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59085)

(declare-fun minValue!1342 () V!33649)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun lt!430794 () Bool)

(declare-fun defaultEntry!1403 () Int)

(declare-fun zeroValue!1342 () V!33649)

(declare-fun from!2084 () (_ BitVec 32))

(declare-fun i!803 () (_ BitVec 32))

(declare-datatypes ((tuple2!13956 0))(
  ( (tuple2!13957 (_1!6988 (_ BitVec 64)) (_2!6988 V!33649)) )
))
(declare-datatypes ((List!19840 0))(
  ( (Nil!19837) (Cons!19836 (h!20998 tuple2!13956) (t!28211 List!19840)) )
))
(declare-datatypes ((ListLongMap!12667 0))(
  ( (ListLongMap!12668 (toList!6349 List!19840)) )
))
(declare-fun contains!5403 (ListLongMap!12667 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3534 (array!59085 array!59083 (_ BitVec 32) (_ BitVec 32) V!33649 V!33649 (_ BitVec 32) Int) ListLongMap!12667)

(assert (=> b!962045 (= lt!430794 (contains!5403 (getCurrentListMap!3534 _keys!1686 _values!1400 mask!2110 extraKeys!1321 zeroValue!1342 minValue!1342 from!2084 defaultEntry!1403) (select (arr!28407 _keys!1686) i!803)))))

(declare-fun b!962046 () Bool)

(declare-fun e!542561 () Bool)

(declare-fun e!542560 () Bool)

(declare-fun mapRes!34243 () Bool)

(assert (=> b!962046 (= e!542561 (and e!542560 mapRes!34243))))

(declare-fun condMapEmpty!34243 () Bool)

(declare-fun mapDefault!34243 () ValueCell!10268)

