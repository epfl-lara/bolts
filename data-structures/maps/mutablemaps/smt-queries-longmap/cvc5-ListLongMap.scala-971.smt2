; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21056 () Bool)

(assert start!21056)

(declare-fun b_free!5575 () Bool)

(declare-fun b_next!5575 () Bool)

(assert (=> start!21056 (= b_free!5575 (not b_next!5575))))

(declare-fun tp!19784 () Bool)

(declare-fun b_and!12411 () Bool)

(assert (=> start!21056 (= tp!19784 b_and!12411)))

(declare-fun e!137691 () Bool)

(declare-fun b!211524 () Bool)

(declare-datatypes ((V!6897 0))(
  ( (V!6898 (val!2763 Int)) )
))
(declare-datatypes ((tuple2!4174 0))(
  ( (tuple2!4175 (_1!2097 (_ BitVec 64)) (_2!2097 V!6897)) )
))
(declare-datatypes ((List!3089 0))(
  ( (Nil!3086) (Cons!3085 (h!3727 tuple2!4174) (t!8040 List!3089)) )
))
(declare-datatypes ((ListLongMap!3101 0))(
  ( (ListLongMap!3102 (toList!1566 List!3089)) )
))
(declare-fun lt!108843 () ListLongMap!3101)

(declare-fun lt!108841 () tuple2!4174)

(declare-fun lt!108846 () ListLongMap!3101)

(declare-fun +!559 (ListLongMap!3101 tuple2!4174) ListLongMap!3101)

(assert (=> b!211524 (= e!137691 (= lt!108843 (+!559 lt!108846 lt!108841)))))

(declare-fun e!137694 () Bool)

(assert (=> b!211524 e!137694))

(declare-fun res!103322 () Bool)

(assert (=> b!211524 (=> (not res!103322) (not e!137694))))

(declare-fun lt!108842 () ListLongMap!3101)

(assert (=> b!211524 (= res!103322 (= lt!108843 (+!559 lt!108842 lt!108841)))))

(declare-fun zeroValue!615 () V!6897)

(assert (=> b!211524 (= lt!108841 (tuple2!4175 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapIsEmpty!9242 () Bool)

(declare-fun mapRes!9242 () Bool)

(assert (=> mapIsEmpty!9242 mapRes!9242))

(declare-fun b!211526 () Bool)

(declare-fun e!137695 () Bool)

(declare-fun e!137692 () Bool)

(assert (=> b!211526 (= e!137695 (and e!137692 mapRes!9242))))

(declare-fun condMapEmpty!9242 () Bool)

(declare-datatypes ((ValueCell!2375 0))(
  ( (ValueCellFull!2375 (v!4753 V!6897)) (EmptyCell!2375) )
))
(declare-datatypes ((array!10076 0))(
  ( (array!10077 (arr!4782 (Array (_ BitVec 32) ValueCell!2375)) (size!5107 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10076)

(declare-fun mapDefault!9242 () ValueCell!2375)

