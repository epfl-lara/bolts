; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40020 () Bool)

(assert start!40020)

(declare-fun b_free!10279 () Bool)

(declare-fun b_next!10279 () Bool)

(assert (=> start!40020 (= b_free!10279 (not b_next!10279))))

(declare-fun tp!36365 () Bool)

(declare-fun b_and!18235 () Bool)

(assert (=> start!40020 (= tp!36365 b_and!18235)))

(declare-fun b!435655 () Bool)

(declare-fun e!257341 () Bool)

(declare-fun e!257343 () Bool)

(assert (=> b!435655 (= e!257341 e!257343)))

(declare-fun res!256815 () Bool)

(assert (=> b!435655 (=> res!256815 e!257343)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!26665 0))(
  ( (array!26666 (arr!12779 (Array (_ BitVec 32) (_ BitVec 64))) (size!13131 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26665)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!435655 (= res!256815 (= k!794 (select (arr!12779 _keys!709) from!863)))))

(assert (=> b!435655 (not (= (select (arr!12779 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!12901 0))(
  ( (Unit!12902) )
))
(declare-fun lt!200753 () Unit!12901)

(declare-fun e!257339 () Unit!12901)

(assert (=> b!435655 (= lt!200753 e!257339)))

(declare-fun c!55679 () Bool)

(assert (=> b!435655 (= c!55679 (= (select (arr!12779 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16347 0))(
  ( (V!16348 (val!5760 Int)) )
))
(declare-datatypes ((tuple2!7562 0))(
  ( (tuple2!7563 (_1!3791 (_ BitVec 64)) (_2!3791 V!16347)) )
))
(declare-datatypes ((List!7606 0))(
  ( (Nil!7603) (Cons!7602 (h!8458 tuple2!7562) (t!13342 List!7606)) )
))
(declare-datatypes ((ListLongMap!6489 0))(
  ( (ListLongMap!6490 (toList!3260 List!7606)) )
))
(declare-fun lt!200751 () ListLongMap!6489)

(declare-fun lt!200749 () ListLongMap!6489)

(assert (=> b!435655 (= lt!200751 lt!200749)))

(declare-fun lt!200745 () ListLongMap!6489)

(declare-fun lt!200757 () tuple2!7562)

(declare-fun +!1404 (ListLongMap!6489 tuple2!7562) ListLongMap!6489)

(assert (=> b!435655 (= lt!200749 (+!1404 lt!200745 lt!200757))))

(declare-fun lt!200754 () V!16347)

(assert (=> b!435655 (= lt!200757 (tuple2!7563 (select (arr!12779 _keys!709) from!863) lt!200754))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5372 0))(
  ( (ValueCellFull!5372 (v!8003 V!16347)) (EmptyCell!5372) )
))
(declare-datatypes ((array!26667 0))(
  ( (array!26668 (arr!12780 (Array (_ BitVec 32) ValueCell!5372)) (size!13132 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26667)

(declare-fun get!6378 (ValueCell!5372 V!16347) V!16347)

(declare-fun dynLambda!831 (Int (_ BitVec 64)) V!16347)

(assert (=> b!435655 (= lt!200754 (get!6378 (select (arr!12780 _values!549) from!863) (dynLambda!831 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!435656 () Bool)

(declare-fun res!256814 () Bool)

(declare-fun e!257344 () Bool)

(assert (=> b!435656 (=> (not res!256814) (not e!257344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!435656 (= res!256814 (validKeyInArray!0 k!794))))

(declare-fun b!435657 () Bool)

(declare-fun res!256802 () Bool)

(assert (=> b!435657 (=> (not res!256802) (not e!257344))))

(declare-fun arrayContainsKey!0 (array!26665 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!435657 (= res!256802 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!435658 () Bool)

(declare-fun e!257336 () Bool)

(declare-fun e!257335 () Bool)

(declare-fun mapRes!18768 () Bool)

(assert (=> b!435658 (= e!257336 (and e!257335 mapRes!18768))))

(declare-fun condMapEmpty!18768 () Bool)

(declare-fun mapDefault!18768 () ValueCell!5372)

