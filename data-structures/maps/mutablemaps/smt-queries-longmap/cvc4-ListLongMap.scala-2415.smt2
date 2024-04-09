; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38208 () Bool)

(assert start!38208)

(declare-fun b_free!9059 () Bool)

(declare-fun b_next!9059 () Bool)

(assert (=> start!38208 (= b_free!9059 (not b_next!9059))))

(declare-fun tp!31961 () Bool)

(declare-fun b_and!16451 () Bool)

(assert (=> start!38208 (= tp!31961 b_and!16451)))

(declare-fun b!393799 () Bool)

(declare-fun res!225751 () Bool)

(declare-fun e!238405 () Bool)

(assert (=> b!393799 (=> (not res!225751) (not e!238405))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!393799 (= res!225751 (validKeyInArray!0 k!778))))

(declare-fun mapNonEmpty!16194 () Bool)

(declare-fun mapRes!16194 () Bool)

(declare-fun tp!31962 () Bool)

(declare-fun e!238401 () Bool)

(assert (=> mapNonEmpty!16194 (= mapRes!16194 (and tp!31962 e!238401))))

(declare-datatypes ((V!14079 0))(
  ( (V!14080 (val!4910 Int)) )
))
(declare-datatypes ((ValueCell!4522 0))(
  ( (ValueCellFull!4522 (v!7147 V!14079)) (EmptyCell!4522) )
))
(declare-fun mapRest!16194 () (Array (_ BitVec 32) ValueCell!4522))

(declare-datatypes ((array!23345 0))(
  ( (array!23346 (arr!11127 (Array (_ BitVec 32) ValueCell!4522)) (size!11479 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23345)

(declare-fun mapKey!16194 () (_ BitVec 32))

(declare-fun mapValue!16194 () ValueCell!4522)

(assert (=> mapNonEmpty!16194 (= (arr!11127 _values!506) (store mapRest!16194 mapKey!16194 mapValue!16194))))

(declare-datatypes ((tuple2!6560 0))(
  ( (tuple2!6561 (_1!3290 (_ BitVec 64)) (_2!3290 V!14079)) )
))
(declare-datatypes ((List!6443 0))(
  ( (Nil!6440) (Cons!6439 (h!7295 tuple2!6560) (t!11623 List!6443)) )
))
(declare-datatypes ((ListLongMap!5487 0))(
  ( (ListLongMap!5488 (toList!2759 List!6443)) )
))
(declare-fun lt!186545 () ListLongMap!5487)

(declare-fun lt!186544 () ListLongMap!5487)

(declare-fun b!393800 () Bool)

(declare-fun e!238402 () Bool)

(declare-fun lt!186553 () tuple2!6560)

(declare-fun +!1057 (ListLongMap!5487 tuple2!6560) ListLongMap!5487)

(assert (=> b!393800 (= e!238402 (= (+!1057 lt!186544 lt!186553) lt!186545))))

(declare-fun lt!186551 () ListLongMap!5487)

(assert (=> b!393800 (= lt!186545 lt!186551)))

(declare-fun b!393801 () Bool)

(declare-fun e!238400 () Bool)

(declare-fun tp_is_empty!9731 () Bool)

(assert (=> b!393801 (= e!238400 tp_is_empty!9731)))

(declare-fun b!393802 () Bool)

(declare-fun res!225759 () Bool)

(declare-fun e!238403 () Bool)

(assert (=> b!393802 (=> (not res!225759) (not e!238403))))

(declare-datatypes ((array!23347 0))(
  ( (array!23348 (arr!11128 (Array (_ BitVec 32) (_ BitVec 64))) (size!11480 (_ BitVec 32))) )
))
(declare-fun lt!186552 () array!23347)

(declare-datatypes ((List!6444 0))(
  ( (Nil!6441) (Cons!6440 (h!7296 (_ BitVec 64)) (t!11624 List!6444)) )
))
(declare-fun arrayNoDuplicates!0 (array!23347 (_ BitVec 32) List!6444) Bool)

(assert (=> b!393802 (= res!225759 (arrayNoDuplicates!0 lt!186552 #b00000000000000000000000000000000 Nil!6441))))

(declare-fun b!393803 () Bool)

(declare-fun res!225752 () Bool)

(assert (=> b!393803 (=> (not res!225752) (not e!238405))))

(declare-fun _keys!658 () array!23347)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23347 (_ BitVec 32)) Bool)

(assert (=> b!393803 (= res!225752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!393804 () Bool)

(declare-fun e!238406 () Bool)

(assert (=> b!393804 (= e!238406 (and e!238400 mapRes!16194))))

(declare-fun condMapEmpty!16194 () Bool)

(declare-fun mapDefault!16194 () ValueCell!4522)

