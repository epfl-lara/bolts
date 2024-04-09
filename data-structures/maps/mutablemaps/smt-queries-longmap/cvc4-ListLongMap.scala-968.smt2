; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21002 () Bool)

(assert start!21002)

(declare-fun b_free!5561 () Bool)

(declare-fun b_next!5561 () Bool)

(assert (=> start!21002 (= b_free!5561 (not b_next!5561))))

(declare-fun tp!19736 () Bool)

(declare-fun b_and!12373 () Bool)

(assert (=> start!21002 (= tp!19736 b_and!12373)))

(declare-datatypes ((V!6877 0))(
  ( (V!6878 (val!2756 Int)) )
))
(declare-datatypes ((tuple2!4160 0))(
  ( (tuple2!4161 (_1!2090 (_ BitVec 64)) (_2!2090 V!6877)) )
))
(declare-fun lt!108391 () tuple2!4160)

(declare-datatypes ((List!3078 0))(
  ( (Nil!3075) (Cons!3074 (h!3716 tuple2!4160) (t!8025 List!3078)) )
))
(declare-datatypes ((ListLongMap!3087 0))(
  ( (ListLongMap!3088 (toList!1559 List!3078)) )
))
(declare-fun lt!108385 () ListLongMap!3087)

(declare-fun e!137330 () Bool)

(declare-fun lt!108397 () ListLongMap!3087)

(declare-fun b!210916 () Bool)

(declare-fun +!552 (ListLongMap!3087 tuple2!4160) ListLongMap!3087)

(assert (=> b!210916 (= e!137330 (= (+!552 lt!108397 lt!108391) lt!108385))))

(declare-fun lt!108389 () tuple2!4160)

(declare-fun lt!108390 () ListLongMap!3087)

(declare-fun lt!108396 () ListLongMap!3087)

(assert (=> b!210916 (= (+!552 lt!108396 lt!108389) (+!552 lt!108390 lt!108391))))

(declare-fun lt!108382 () ListLongMap!3087)

(declare-fun minValue!615 () V!6877)

(declare-datatypes ((Unit!6401 0))(
  ( (Unit!6402) )
))
(declare-fun lt!108393 () Unit!6401)

(declare-fun v!520 () V!6877)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!197 (ListLongMap!3087 (_ BitVec 64) V!6877 (_ BitVec 64) V!6877) Unit!6401)

(assert (=> b!210916 (= lt!108393 (addCommutativeForDiffKeys!197 lt!108382 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!210917 () Bool)

(declare-fun res!102993 () Bool)

(declare-fun e!137331 () Bool)

(assert (=> b!210917 (=> (not res!102993) (not e!137331))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210917 (= res!102993 (validKeyInArray!0 k!843))))

(declare-fun b!210918 () Bool)

(declare-fun e!137327 () Bool)

(declare-fun e!137328 () Bool)

(declare-fun mapRes!9215 () Bool)

(assert (=> b!210918 (= e!137327 (and e!137328 mapRes!9215))))

(declare-fun condMapEmpty!9215 () Bool)

(declare-datatypes ((ValueCell!2368 0))(
  ( (ValueCellFull!2368 (v!4738 V!6877)) (EmptyCell!2368) )
))
(declare-datatypes ((array!10046 0))(
  ( (array!10047 (arr!4769 (Array (_ BitVec 32) ValueCell!2368)) (size!5094 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10046)

(declare-fun mapDefault!9215 () ValueCell!2368)

