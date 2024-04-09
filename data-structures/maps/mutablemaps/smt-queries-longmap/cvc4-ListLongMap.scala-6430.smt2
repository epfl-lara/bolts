; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82408 () Bool)

(assert start!82408)

(declare-fun b_free!18647 () Bool)

(declare-fun b_next!18647 () Bool)

(assert (=> start!82408 (= b_free!18647 (not b_next!18647))))

(declare-fun tp!64912 () Bool)

(declare-fun b_and!30153 () Bool)

(assert (=> start!82408 (= tp!64912 b_and!30153)))

(declare-fun b!960407 () Bool)

(declare-fun e!541417 () Bool)

(declare-fun tp_is_empty!21359 () Bool)

(assert (=> b!960407 (= e!541417 tp_is_empty!21359)))

(declare-fun b!960408 () Bool)

(declare-fun res!642996 () Bool)

(declare-fun e!541414 () Bool)

(assert (=> b!960408 (=> (not res!642996) (not e!541414))))

(declare-datatypes ((array!58819 0))(
  ( (array!58820 (arr!28279 (Array (_ BitVec 32) (_ BitVec 64))) (size!28759 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58819)

(declare-fun i!793 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!960408 (= res!642996 (validKeyInArray!0 (select (arr!28279 _keys!1668) i!793)))))

(declare-fun b!960409 () Bool)

(assert (=> b!960409 (= e!541414 false)))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33461 0))(
  ( (V!33462 (val!10730 Int)) )
))
(declare-fun minValue!1328 () V!33461)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-fun lt!430607 () Bool)

(declare-fun defaultEntry!1389 () Int)

(declare-fun zeroValue!1328 () V!33461)

(declare-fun from!2064 () (_ BitVec 32))

(declare-datatypes ((ValueCell!10198 0))(
  ( (ValueCellFull!10198 (v!13287 V!33461)) (EmptyCell!10198) )
))
(declare-datatypes ((array!58821 0))(
  ( (array!58822 (arr!28280 (Array (_ BitVec 32) ValueCell!10198)) (size!28760 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58821)

(declare-datatypes ((tuple2!13924 0))(
  ( (tuple2!13925 (_1!6972 (_ BitVec 64)) (_2!6972 V!33461)) )
))
(declare-datatypes ((List!19785 0))(
  ( (Nil!19782) (Cons!19781 (h!20943 tuple2!13924) (t!28156 List!19785)) )
))
(declare-datatypes ((ListLongMap!12635 0))(
  ( (ListLongMap!12636 (toList!6333 List!19785)) )
))
(declare-fun contains!5383 (ListLongMap!12635 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3518 (array!58819 array!58821 (_ BitVec 32) (_ BitVec 32) V!33461 V!33461 (_ BitVec 32) Int) ListLongMap!12635)

(assert (=> b!960409 (= lt!430607 (contains!5383 (getCurrentListMap!3518 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389) (select (arr!28279 _keys!1668) i!793)))))

(declare-fun b!960410 () Bool)

(declare-fun e!541416 () Bool)

(declare-fun e!541415 () Bool)

(declare-fun mapRes!34018 () Bool)

(assert (=> b!960410 (= e!541416 (and e!541415 mapRes!34018))))

(declare-fun condMapEmpty!34018 () Bool)

(declare-fun mapDefault!34018 () ValueCell!10198)

