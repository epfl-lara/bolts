; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35080 () Bool)

(assert start!35080)

(declare-fun b_free!7739 () Bool)

(declare-fun b_next!7739 () Bool)

(assert (=> start!35080 (= b_free!7739 (not b_next!7739))))

(declare-fun tp!26799 () Bool)

(declare-fun b_and!14989 () Bool)

(assert (=> start!35080 (= tp!26799 b_and!14989)))

(declare-fun b!351381 () Bool)

(declare-fun res!194938 () Bool)

(declare-fun e!215191 () Bool)

(assert (=> b!351381 (=> (not res!194938) (not e!215191))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11231 0))(
  ( (V!11232 (val!3890 Int)) )
))
(declare-fun zeroValue!1467 () V!11231)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3502 0))(
  ( (ValueCellFull!3502 (v!6074 V!11231)) (EmptyCell!3502) )
))
(declare-datatypes ((array!18925 0))(
  ( (array!18926 (arr!8964 (Array (_ BitVec 32) ValueCell!3502)) (size!9316 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18925)

(declare-datatypes ((array!18927 0))(
  ( (array!18928 (arr!8965 (Array (_ BitVec 32) (_ BitVec 64))) (size!9317 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18927)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11231)

(declare-datatypes ((tuple2!5604 0))(
  ( (tuple2!5605 (_1!2812 (_ BitVec 64)) (_2!2812 V!11231)) )
))
(declare-datatypes ((List!5242 0))(
  ( (Nil!5239) (Cons!5238 (h!6094 tuple2!5604) (t!10390 List!5242)) )
))
(declare-datatypes ((ListLongMap!4531 0))(
  ( (ListLongMap!4532 (toList!2281 List!5242)) )
))
(declare-fun contains!2347 (ListLongMap!4531 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1798 (array!18927 array!18925 (_ BitVec 32) (_ BitVec 32) V!11231 V!11231 (_ BitVec 32) Int) ListLongMap!4531)

(assert (=> b!351381 (= res!194938 (not (contains!2347 (getCurrentListMap!1798 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun res!194937 () Bool)

(assert (=> start!35080 (=> (not res!194937) (not e!215191))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35080 (= res!194937 (validMask!0 mask!2385))))

(assert (=> start!35080 e!215191))

(assert (=> start!35080 true))

(declare-fun tp_is_empty!7691 () Bool)

(assert (=> start!35080 tp_is_empty!7691))

(assert (=> start!35080 tp!26799))

(declare-fun e!215197 () Bool)

(declare-fun array_inv!6606 (array!18925) Bool)

(assert (=> start!35080 (and (array_inv!6606 _values!1525) e!215197)))

(declare-fun array_inv!6607 (array!18927) Bool)

(assert (=> start!35080 (array_inv!6607 _keys!1895)))

(declare-fun b!351382 () Bool)

(declare-fun e!215195 () Bool)

(assert (=> b!351382 (= e!215195 tp_is_empty!7691)))

(declare-fun b!351383 () Bool)

(declare-fun mapRes!13011 () Bool)

(assert (=> b!351383 (= e!215197 (and e!215195 mapRes!13011))))

(declare-fun condMapEmpty!13011 () Bool)

(declare-fun mapDefault!13011 () ValueCell!3502)

