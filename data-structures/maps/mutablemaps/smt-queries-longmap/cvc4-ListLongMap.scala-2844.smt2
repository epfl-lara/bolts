; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41062 () Bool)

(assert start!41062)

(declare-fun b_free!10967 () Bool)

(declare-fun b_next!10967 () Bool)

(assert (=> start!41062 (= b_free!10967 (not b_next!10967))))

(declare-fun tp!38731 () Bool)

(declare-fun b_and!19159 () Bool)

(assert (=> start!41062 (= tp!38731 b_and!19159)))

(declare-fun b!457472 () Bool)

(declare-fun res!273260 () Bool)

(declare-fun e!267171 () Bool)

(assert (=> b!457472 (=> (not res!273260) (not e!267171))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!457472 (= res!273260 (validMask!0 mask!1025))))

(declare-fun b!457473 () Bool)

(declare-fun res!273266 () Bool)

(assert (=> b!457473 (=> (not res!273266) (not e!267171))))

(declare-datatypes ((array!28379 0))(
  ( (array!28380 (arr!13629 (Array (_ BitVec 32) (_ BitVec 64))) (size!13981 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28379)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457473 (= res!273266 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!457474 () Bool)

(declare-fun res!273264 () Bool)

(assert (=> b!457474 (=> (not res!273264) (not e!267171))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28379 (_ BitVec 32)) Bool)

(assert (=> b!457474 (= res!273264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457475 () Bool)

(declare-fun e!267174 () Bool)

(assert (=> b!457475 (= e!267174 true)))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((V!17511 0))(
  ( (V!17512 (val!6197 Int)) )
))
(declare-datatypes ((ValueCell!5809 0))(
  ( (ValueCellFull!5809 (v!8463 V!17511)) (EmptyCell!5809) )
))
(declare-datatypes ((array!28381 0))(
  ( (array!28382 (arr!13630 (Array (_ BitVec 32) ValueCell!5809)) (size!13982 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28381)

(declare-datatypes ((tuple2!8130 0))(
  ( (tuple2!8131 (_1!4075 (_ BitVec 64)) (_2!4075 V!17511)) )
))
(declare-datatypes ((List!8233 0))(
  ( (Nil!8230) (Cons!8229 (h!9085 tuple2!8130) (t!14087 List!8233)) )
))
(declare-datatypes ((ListLongMap!7057 0))(
  ( (ListLongMap!7058 (toList!3544 List!8233)) )
))
(declare-fun lt!206983 () ListLongMap!7057)

(declare-fun lt!206982 () ListLongMap!7057)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun +!1564 (ListLongMap!7057 tuple2!8130) ListLongMap!7057)

(declare-fun get!6720 (ValueCell!5809 V!17511) V!17511)

(declare-fun dynLambda!876 (Int (_ BitVec 64)) V!17511)

(assert (=> b!457475 (= lt!206982 (+!1564 lt!206983 (tuple2!8131 (select (arr!13629 _keys!709) from!863) (get!6720 (select (arr!13630 _values!549) from!863) (dynLambda!876 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457476 () Bool)

(declare-fun e!267175 () Bool)

(declare-fun e!267173 () Bool)

(declare-fun mapRes!20101 () Bool)

(assert (=> b!457476 (= e!267175 (and e!267173 mapRes!20101))))

(declare-fun condMapEmpty!20101 () Bool)

(declare-fun mapDefault!20101 () ValueCell!5809)

