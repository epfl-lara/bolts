; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106992 () Bool)

(assert start!106992)

(declare-fun b!1268276 () Bool)

(declare-fun res!844234 () Bool)

(declare-fun e!722705 () Bool)

(assert (=> b!1268276 (=> (not res!844234) (not e!722705))))

(declare-datatypes ((array!82563 0))(
  ( (array!82564 (arr!39815 (Array (_ BitVec 32) (_ BitVec 64))) (size!40352 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82563)

(declare-fun mask!1730 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82563 (_ BitVec 32)) Bool)

(assert (=> b!1268276 (= res!844234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun res!844236 () Bool)

(assert (=> start!106992 (=> (not res!844236) (not e!722705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106992 (= res!844236 (validMask!0 mask!1730))))

(assert (=> start!106992 e!722705))

(declare-datatypes ((V!48735 0))(
  ( (V!48736 (val!16403 Int)) )
))
(declare-datatypes ((ValueCell!15475 0))(
  ( (ValueCellFull!15475 (v!19037 V!48735)) (EmptyCell!15475) )
))
(declare-datatypes ((array!82565 0))(
  ( (array!82566 (arr!39816 (Array (_ BitVec 32) ValueCell!15475)) (size!40353 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82565)

(declare-fun e!722706 () Bool)

(declare-fun array_inv!30255 (array!82565) Bool)

(assert (=> start!106992 (and (array_inv!30255 _values!1134) e!722706)))

(assert (=> start!106992 true))

(declare-fun array_inv!30256 (array!82563) Bool)

(assert (=> start!106992 (array_inv!30256 _keys!1364)))

(declare-fun b!1268277 () Bool)

(declare-fun e!722704 () Bool)

(declare-datatypes ((List!28557 0))(
  ( (Nil!28554) (Cons!28553 (h!29762 (_ BitVec 64)) (t!42093 List!28557)) )
))
(declare-fun contains!7681 (List!28557 (_ BitVec 64)) Bool)

(assert (=> b!1268277 (= e!722704 (contains!7681 Nil!28554 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1268278 () Bool)

(declare-fun e!722709 () Bool)

(declare-fun tp_is_empty!32657 () Bool)

(assert (=> b!1268278 (= e!722709 tp_is_empty!32657)))

(declare-fun mapNonEmpty!50563 () Bool)

(declare-fun mapRes!50563 () Bool)

(declare-fun tp!96743 () Bool)

(declare-fun e!722708 () Bool)

(assert (=> mapNonEmpty!50563 (= mapRes!50563 (and tp!96743 e!722708))))

(declare-fun mapValue!50563 () ValueCell!15475)

(declare-fun mapRest!50563 () (Array (_ BitVec 32) ValueCell!15475))

(declare-fun mapKey!50563 () (_ BitVec 32))

(assert (=> mapNonEmpty!50563 (= (arr!39816 _values!1134) (store mapRest!50563 mapKey!50563 mapValue!50563))))

(declare-fun mapIsEmpty!50563 () Bool)

(assert (=> mapIsEmpty!50563 mapRes!50563))

(declare-fun b!1268279 () Bool)

(assert (=> b!1268279 (= e!722706 (and e!722709 mapRes!50563))))

(declare-fun condMapEmpty!50563 () Bool)

(declare-fun mapDefault!50563 () ValueCell!15475)

