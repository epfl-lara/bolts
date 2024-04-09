; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37472 () Bool)

(assert start!37472)

(declare-fun b_free!8591 () Bool)

(declare-fun b_next!8591 () Bool)

(assert (=> start!37472 (= b_free!8591 (not b_next!8591))))

(declare-fun tp!30489 () Bool)

(declare-fun b_and!15851 () Bool)

(assert (=> start!37472 (= tp!30489 b_and!15851)))

(declare-fun b!381493 () Bool)

(declare-fun e!231923 () Bool)

(declare-fun tp_is_empty!9239 () Bool)

(assert (=> b!381493 (= e!231923 tp_is_empty!9239)))

(declare-fun b!381494 () Bool)

(declare-fun res!216896 () Bool)

(declare-fun e!231920 () Bool)

(assert (=> b!381494 (=> (not res!216896) (not e!231920))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22369 0))(
  ( (array!22370 (arr!10650 (Array (_ BitVec 32) (_ BitVec 64))) (size!11002 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22369)

(assert (=> b!381494 (= res!216896 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11002 _keys!658))))))

(declare-fun b!381495 () Bool)

(declare-fun res!216897 () Bool)

(assert (=> b!381495 (=> (not res!216897) (not e!231920))))

(assert (=> b!381495 (= res!216897 (or (= (select (arr!10650 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10650 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!381496 () Bool)

(declare-fun e!231918 () Bool)

(assert (=> b!381496 (= e!231918 true)))

(declare-datatypes ((V!13423 0))(
  ( (V!13424 (val!4664 Int)) )
))
(declare-datatypes ((tuple2!6218 0))(
  ( (tuple2!6219 (_1!3119 (_ BitVec 64)) (_2!3119 V!13423)) )
))
(declare-datatypes ((List!6088 0))(
  ( (Nil!6085) (Cons!6084 (h!6940 tuple2!6218) (t!11246 List!6088)) )
))
(declare-datatypes ((ListLongMap!5145 0))(
  ( (ListLongMap!5146 (toList!2588 List!6088)) )
))
(declare-fun lt!178904 () ListLongMap!5145)

(declare-fun lt!178909 () ListLongMap!5145)

(assert (=> b!381496 (= lt!178904 lt!178909)))

(declare-fun b!381497 () Bool)

(declare-fun e!231921 () Bool)

(declare-fun e!231924 () Bool)

(declare-fun mapRes!15423 () Bool)

(assert (=> b!381497 (= e!231921 (and e!231924 mapRes!15423))))

(declare-fun condMapEmpty!15423 () Bool)

(declare-datatypes ((ValueCell!4276 0))(
  ( (ValueCellFull!4276 (v!6857 V!13423)) (EmptyCell!4276) )
))
(declare-datatypes ((array!22371 0))(
  ( (array!22372 (arr!10651 (Array (_ BitVec 32) ValueCell!4276)) (size!11003 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22371)

(declare-fun mapDefault!15423 () ValueCell!4276)

