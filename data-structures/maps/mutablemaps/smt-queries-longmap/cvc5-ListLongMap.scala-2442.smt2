; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38478 () Bool)

(assert start!38478)

(declare-fun b!396866 () Bool)

(declare-fun e!240075 () Bool)

(declare-fun tp_is_empty!9889 () Bool)

(assert (=> b!396866 (= e!240075 tp_is_empty!9889)))

(declare-fun mapNonEmpty!16455 () Bool)

(declare-fun mapRes!16455 () Bool)

(declare-fun tp!32250 () Bool)

(declare-fun e!240076 () Bool)

(assert (=> mapNonEmpty!16455 (= mapRes!16455 (and tp!32250 e!240076))))

(declare-datatypes ((V!14291 0))(
  ( (V!14292 (val!4989 Int)) )
))
(declare-datatypes ((ValueCell!4601 0))(
  ( (ValueCellFull!4601 (v!7232 V!14291)) (EmptyCell!4601) )
))
(declare-datatypes ((array!23661 0))(
  ( (array!23662 (arr!11277 (Array (_ BitVec 32) ValueCell!4601)) (size!11629 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23661)

(declare-fun mapKey!16455 () (_ BitVec 32))

(declare-fun mapRest!16455 () (Array (_ BitVec 32) ValueCell!4601))

(declare-fun mapValue!16455 () ValueCell!4601)

(assert (=> mapNonEmpty!16455 (= (arr!11277 _values!549) (store mapRest!16455 mapKey!16455 mapValue!16455))))

(declare-fun b!396867 () Bool)

(declare-fun res!227865 () Bool)

(declare-fun e!240079 () Bool)

(assert (=> b!396867 (=> (not res!227865) (not e!240079))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!396867 (= res!227865 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!16455 () Bool)

(assert (=> mapIsEmpty!16455 mapRes!16455))

(declare-fun b!396869 () Bool)

(declare-fun res!227872 () Bool)

(assert (=> b!396869 (=> (not res!227872) (not e!240079))))

(declare-datatypes ((array!23663 0))(
  ( (array!23664 (arr!11278 (Array (_ BitVec 32) (_ BitVec 64))) (size!11630 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23663)

(declare-fun arrayContainsKey!0 (array!23663 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!396869 (= res!227872 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!396870 () Bool)

(declare-fun res!227870 () Bool)

(assert (=> b!396870 (=> (not res!227870) (not e!240079))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!396870 (= res!227870 (validMask!0 mask!1025))))

(declare-fun b!396871 () Bool)

(declare-fun e!240078 () Bool)

(assert (=> b!396871 (= e!240078 (and e!240075 mapRes!16455))))

(declare-fun condMapEmpty!16455 () Bool)

(declare-fun mapDefault!16455 () ValueCell!4601)

