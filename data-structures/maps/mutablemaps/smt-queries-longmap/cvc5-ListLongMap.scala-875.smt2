; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20358 () Bool)

(assert start!20358)

(declare-fun b_free!5005 () Bool)

(declare-fun b_next!5005 () Bool)

(assert (=> start!20358 (= b_free!5005 (not b_next!5005))))

(declare-fun tp!18047 () Bool)

(declare-fun b_and!11769 () Bool)

(assert (=> start!20358 (= tp!18047 b_and!11769)))

(declare-fun b!200674 () Bool)

(declare-fun res!95713 () Bool)

(declare-fun e!131587 () Bool)

(assert (=> b!200674 (=> (not res!95713) (not e!131587))))

(declare-datatypes ((array!8952 0))(
  ( (array!8953 (arr!4226 (Array (_ BitVec 32) (_ BitVec 64))) (size!4551 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8952)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8952 (_ BitVec 32)) Bool)

(assert (=> b!200674 (= res!95713 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200675 () Bool)

(declare-fun e!131581 () Bool)

(declare-fun e!131585 () Bool)

(assert (=> b!200675 (= e!131581 e!131585)))

(declare-fun res!95708 () Bool)

(assert (=> b!200675 (=> res!95708 e!131585)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!200675 (= res!95708 (= k!843 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6129 0))(
  ( (V!6130 (val!2475 Int)) )
))
(declare-datatypes ((tuple2!3738 0))(
  ( (tuple2!3739 (_1!1879 (_ BitVec 64)) (_2!1879 V!6129)) )
))
(declare-datatypes ((List!2679 0))(
  ( (Nil!2676) (Cons!2675 (h!3317 tuple2!3738) (t!7618 List!2679)) )
))
(declare-datatypes ((ListLongMap!2665 0))(
  ( (ListLongMap!2666 (toList!1348 List!2679)) )
))
(declare-fun lt!99444 () ListLongMap!2665)

(declare-fun lt!99431 () ListLongMap!2665)

(assert (=> b!200675 (= lt!99444 lt!99431)))

(declare-fun lt!99435 () ListLongMap!2665)

(declare-fun lt!99438 () tuple2!3738)

(declare-fun +!365 (ListLongMap!2665 tuple2!3738) ListLongMap!2665)

(assert (=> b!200675 (= lt!99431 (+!365 lt!99435 lt!99438))))

(declare-datatypes ((Unit!6037 0))(
  ( (Unit!6038) )
))
(declare-fun lt!99437 () Unit!6037)

(declare-fun v!520 () V!6129)

(declare-fun zeroValue!615 () V!6129)

(declare-fun lt!99441 () ListLongMap!2665)

(declare-fun addCommutativeForDiffKeys!86 (ListLongMap!2665 (_ BitVec 64) V!6129 (_ BitVec 64) V!6129) Unit!6037)

(assert (=> b!200675 (= lt!99437 (addCommutativeForDiffKeys!86 lt!99441 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!99443 () ListLongMap!2665)

(declare-fun lt!99436 () tuple2!3738)

(assert (=> b!200675 (= lt!99443 (+!365 lt!99444 lt!99436))))

(declare-fun lt!99439 () ListLongMap!2665)

(declare-fun lt!99440 () tuple2!3738)

(assert (=> b!200675 (= lt!99444 (+!365 lt!99439 lt!99440))))

(declare-fun lt!99430 () ListLongMap!2665)

(declare-fun lt!99442 () ListLongMap!2665)

(assert (=> b!200675 (= lt!99430 lt!99442)))

(assert (=> b!200675 (= lt!99442 (+!365 lt!99435 lt!99436))))

(assert (=> b!200675 (= lt!99435 (+!365 lt!99441 lt!99440))))

(declare-fun lt!99433 () ListLongMap!2665)

(assert (=> b!200675 (= lt!99443 (+!365 (+!365 lt!99433 lt!99440) lt!99436))))

(declare-fun minValue!615 () V!6129)

(assert (=> b!200675 (= lt!99436 (tuple2!3739 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200675 (= lt!99440 (tuple2!3739 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!200676 () Bool)

(declare-fun e!131582 () Bool)

(declare-fun e!131583 () Bool)

(declare-fun mapRes!8360 () Bool)

(assert (=> b!200676 (= e!131582 (and e!131583 mapRes!8360))))

(declare-fun condMapEmpty!8360 () Bool)

(declare-datatypes ((ValueCell!2087 0))(
  ( (ValueCellFull!2087 (v!4441 V!6129)) (EmptyCell!2087) )
))
(declare-datatypes ((array!8954 0))(
  ( (array!8955 (arr!4227 (Array (_ BitVec 32) ValueCell!2087)) (size!4552 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8954)

(declare-fun mapDefault!8360 () ValueCell!2087)

