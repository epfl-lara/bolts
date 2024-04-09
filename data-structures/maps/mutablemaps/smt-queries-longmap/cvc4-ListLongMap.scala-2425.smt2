; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38320 () Bool)

(assert start!38320)

(declare-fun b!394915 () Bool)

(declare-fun res!226442 () Bool)

(declare-fun e!239119 () Bool)

(assert (=> b!394915 (=> (not res!226442) (not e!239119))))

(declare-datatypes ((array!23467 0))(
  ( (array!23468 (arr!11184 (Array (_ BitVec 32) (_ BitVec 64))) (size!11536 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!23467)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!14159 0))(
  ( (V!14160 (val!4940 Int)) )
))
(declare-datatypes ((ValueCell!4552 0))(
  ( (ValueCellFull!4552 (v!7182 V!14159)) (EmptyCell!4552) )
))
(declare-datatypes ((array!23469 0))(
  ( (array!23470 (arr!11185 (Array (_ BitVec 32) ValueCell!4552)) (size!11537 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!23469)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!394915 (= res!226442 (and (= (size!11537 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!11536 _keys!709) (size!11537 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!394916 () Bool)

(declare-fun res!226444 () Bool)

(assert (=> b!394916 (=> (not res!226444) (not e!239119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!394916 (= res!226444 (validMask!0 mask!1025))))

(declare-fun b!394917 () Bool)

(assert (=> b!394917 (= e!239119 false)))

(declare-fun lt!187028 () Bool)

(declare-datatypes ((List!6464 0))(
  ( (Nil!6461) (Cons!6460 (h!7316 (_ BitVec 64)) (t!11646 List!6464)) )
))
(declare-fun arrayNoDuplicates!0 (array!23467 (_ BitVec 32) List!6464) Bool)

(assert (=> b!394917 (= lt!187028 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!6461))))

(declare-fun mapIsEmpty!16296 () Bool)

(declare-fun mapRes!16296 () Bool)

(assert (=> mapIsEmpty!16296 mapRes!16296))

(declare-fun b!394918 () Bool)

(declare-fun e!239121 () Bool)

(declare-fun tp_is_empty!9791 () Bool)

(assert (=> b!394918 (= e!239121 tp_is_empty!9791)))

(declare-fun mapNonEmpty!16296 () Bool)

(declare-fun tp!32091 () Bool)

(declare-fun e!239122 () Bool)

(assert (=> mapNonEmpty!16296 (= mapRes!16296 (and tp!32091 e!239122))))

(declare-fun mapValue!16296 () ValueCell!4552)

(declare-fun mapRest!16296 () (Array (_ BitVec 32) ValueCell!4552))

(declare-fun mapKey!16296 () (_ BitVec 32))

(assert (=> mapNonEmpty!16296 (= (arr!11185 _values!549) (store mapRest!16296 mapKey!16296 mapValue!16296))))

(declare-fun b!394919 () Bool)

(declare-fun e!239120 () Bool)

(assert (=> b!394919 (= e!239120 (and e!239121 mapRes!16296))))

(declare-fun condMapEmpty!16296 () Bool)

(declare-fun mapDefault!16296 () ValueCell!4552)

