; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39124 () Bool)

(assert start!39124)

(declare-fun b_free!9383 () Bool)

(declare-fun b_next!9383 () Bool)

(assert (=> start!39124 (= b_free!9383 (not b_next!9383))))

(declare-fun tp!33678 () Bool)

(declare-fun b_and!16787 () Bool)

(assert (=> start!39124 (= tp!33678 b_and!16787)))

(declare-fun b!411027 () Bool)

(declare-fun res!238474 () Bool)

(declare-fun e!246212 () Bool)

(assert (=> b!411027 (=> (not res!238474) (not e!246212))))

(declare-datatypes ((array!24917 0))(
  ( (array!24918 (arr!11905 (Array (_ BitVec 32) (_ BitVec 64))) (size!12257 (_ BitVec 32))) )
))
(declare-fun lt!189199 () array!24917)

(declare-datatypes ((List!6880 0))(
  ( (Nil!6877) (Cons!6876 (h!7732 (_ BitVec 64)) (t!12062 List!6880)) )
))
(declare-fun arrayNoDuplicates!0 (array!24917 (_ BitVec 32) List!6880) Bool)

(assert (=> b!411027 (= res!238474 (arrayNoDuplicates!0 lt!189199 #b00000000000000000000000000000000 Nil!6877))))

(declare-fun b!411028 () Bool)

(declare-fun e!246217 () Bool)

(declare-fun tp_is_empty!10535 () Bool)

(assert (=> b!411028 (= e!246217 tp_is_empty!10535)))

(declare-fun b!411029 () Bool)

(declare-fun res!238479 () Bool)

(declare-fun e!246214 () Bool)

(assert (=> b!411029 (=> (not res!238479) (not e!246214))))

(declare-fun _keys!709 () array!24917)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!15151 0))(
  ( (V!15152 (val!5312 Int)) )
))
(declare-datatypes ((ValueCell!4924 0))(
  ( (ValueCellFull!4924 (v!7555 V!15151)) (EmptyCell!4924) )
))
(declare-datatypes ((array!24919 0))(
  ( (array!24920 (arr!11906 (Array (_ BitVec 32) ValueCell!4924)) (size!12258 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24919)

(declare-fun mask!1025 () (_ BitVec 32))

(assert (=> b!411029 (= res!238479 (and (= (size!12258 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12257 _keys!709) (size!12258 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!411030 () Bool)

(declare-fun res!238475 () Bool)

(assert (=> b!411030 (=> (not res!238475) (not e!246214))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!24917 (_ BitVec 32)) Bool)

(assert (=> b!411030 (= res!238475 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!411031 () Bool)

(declare-fun res!238473 () Bool)

(assert (=> b!411031 (=> (not res!238473) (not e!246214))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!411031 (= res!238473 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12257 _keys!709))))))

(declare-fun mapIsEmpty!17424 () Bool)

(declare-fun mapRes!17424 () Bool)

(assert (=> mapIsEmpty!17424 mapRes!17424))

(declare-fun mapNonEmpty!17424 () Bool)

(declare-fun tp!33677 () Bool)

(declare-fun e!246215 () Bool)

(assert (=> mapNonEmpty!17424 (= mapRes!17424 (and tp!33677 e!246215))))

(declare-fun mapRest!17424 () (Array (_ BitVec 32) ValueCell!4924))

(declare-fun mapValue!17424 () ValueCell!4924)

(declare-fun mapKey!17424 () (_ BitVec 32))

(assert (=> mapNonEmpty!17424 (= (arr!11906 _values!549) (store mapRest!17424 mapKey!17424 mapValue!17424))))

(declare-fun b!411032 () Bool)

(declare-fun res!238472 () Bool)

(assert (=> b!411032 (=> (not res!238472) (not e!246214))))

(assert (=> b!411032 (= res!238472 (or (= (select (arr!11905 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11905 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411033 () Bool)

(declare-fun res!238480 () Bool)

(assert (=> b!411033 (=> (not res!238480) (not e!246212))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!411033 (= res!238480 (bvsle from!863 i!563))))

(declare-fun b!411034 () Bool)

(declare-fun e!246216 () Bool)

(assert (=> b!411034 (= e!246216 (and e!246217 mapRes!17424))))

(declare-fun condMapEmpty!17424 () Bool)

(declare-fun mapDefault!17424 () ValueCell!4924)

