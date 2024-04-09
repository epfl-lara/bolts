; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41160 () Bool)

(assert start!41160)

(declare-fun b_free!11021 () Bool)

(declare-fun b_next!11021 () Bool)

(assert (=> start!41160 (= b_free!11021 (not b_next!11021))))

(declare-fun tp!38898 () Bool)

(declare-fun b_and!19299 () Bool)

(assert (=> start!41160 (= tp!38898 b_and!19299)))

(declare-fun b!459266 () Bool)

(declare-datatypes ((Unit!13293 0))(
  ( (Unit!13294) )
))
(declare-fun e!268059 () Unit!13293)

(declare-fun Unit!13295 () Unit!13293)

(assert (=> b!459266 (= e!268059 Unit!13295)))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun lt!207840 () Unit!13293)

(declare-datatypes ((array!28483 0))(
  ( (array!28484 (arr!13679 (Array (_ BitVec 32) (_ BitVec 64))) (size!14031 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28483)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28483 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13293)

(assert (=> b!459266 (= lt!207840 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!459266 false))

(declare-fun b!459267 () Bool)

(declare-fun e!268056 () Bool)

(assert (=> b!459267 (= e!268056 (bvslt from!863 (size!14031 _keys!709)))))

(assert (=> b!459267 (not (= (select (arr!13679 _keys!709) from!863) k!794))))

(declare-fun lt!207841 () Unit!13293)

(assert (=> b!459267 (= lt!207841 e!268059)))

(declare-fun c!56405 () Bool)

(assert (=> b!459267 (= c!56405 (= (select (arr!13679 _keys!709) from!863) k!794))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!17583 0))(
  ( (V!17584 (val!6224 Int)) )
))
(declare-datatypes ((ValueCell!5836 0))(
  ( (ValueCellFull!5836 (v!8498 V!17583)) (EmptyCell!5836) )
))
(declare-datatypes ((array!28485 0))(
  ( (array!28486 (arr!13680 (Array (_ BitVec 32) ValueCell!5836)) (size!14032 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28485)

(declare-datatypes ((tuple2!8168 0))(
  ( (tuple2!8169 (_1!4094 (_ BitVec 64)) (_2!4094 V!17583)) )
))
(declare-datatypes ((List!8273 0))(
  ( (Nil!8270) (Cons!8269 (h!9125 tuple2!8168) (t!14181 List!8273)) )
))
(declare-datatypes ((ListLongMap!7095 0))(
  ( (ListLongMap!7096 (toList!3563 List!8273)) )
))
(declare-fun lt!207843 () ListLongMap!7095)

(declare-fun lt!207838 () ListLongMap!7095)

(declare-fun +!1583 (ListLongMap!7095 tuple2!8168) ListLongMap!7095)

(declare-fun get!6759 (ValueCell!5836 V!17583) V!17583)

(declare-fun dynLambda!893 (Int (_ BitVec 64)) V!17583)

(assert (=> b!459267 (= lt!207838 (+!1583 lt!207843 (tuple2!8169 (select (arr!13679 _keys!709) from!863) (get!6759 (select (arr!13680 _values!549) from!863) (dynLambda!893 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!459268 () Bool)

(declare-fun Unit!13296 () Unit!13293)

(assert (=> b!459268 (= e!268059 Unit!13296)))

(declare-fun b!459269 () Bool)

(declare-fun res!274547 () Bool)

(declare-fun e!268060 () Bool)

(assert (=> b!459269 (=> (not res!274547) (not e!268060))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!459269 (= res!274547 (or (= (select (arr!13679 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13679 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!459270 () Bool)

(declare-fun e!268057 () Bool)

(declare-fun e!268052 () Bool)

(declare-fun mapRes!20188 () Bool)

(assert (=> b!459270 (= e!268057 (and e!268052 mapRes!20188))))

(declare-fun condMapEmpty!20188 () Bool)

(declare-fun mapDefault!20188 () ValueCell!5836)

