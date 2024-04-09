; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82140 () Bool)

(assert start!82140)

(declare-fun b!957070 () Bool)

(declare-fun res!640822 () Bool)

(declare-fun e!539462 () Bool)

(assert (=> b!957070 (=> (not res!640822) (not e!539462))))

(declare-datatypes ((array!58329 0))(
  ( (array!58330 (arr!28035 (Array (_ BitVec 32) (_ BitVec 64))) (size!28515 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58329)

(assert (=> b!957070 (= res!640822 (and (bvsle #b00000000000000000000000000000000 (size!28515 _keys!1668)) (bvslt (size!28515 _keys!1668) #b01111111111111111111111111111111)))))

(declare-fun b!957071 () Bool)

(declare-fun res!640820 () Bool)

(assert (=> b!957071 (=> (not res!640820) (not e!539462))))

(declare-datatypes ((List!19642 0))(
  ( (Nil!19639) (Cons!19638 (h!20800 (_ BitVec 64)) (t!28013 List!19642)) )
))
(declare-fun noDuplicate!1368 (List!19642) Bool)

(assert (=> b!957071 (= res!640820 (noDuplicate!1368 Nil!19639))))

(declare-fun mapNonEmpty!33631 () Bool)

(declare-fun mapRes!33631 () Bool)

(declare-fun tp!64237 () Bool)

(declare-fun e!539458 () Bool)

(assert (=> mapNonEmpty!33631 (= mapRes!33631 (and tp!64237 e!539458))))

(declare-datatypes ((V!33121 0))(
  ( (V!33122 (val!10602 Int)) )
))
(declare-datatypes ((ValueCell!10070 0))(
  ( (ValueCellFull!10070 (v!13158 V!33121)) (EmptyCell!10070) )
))
(declare-fun mapValue!33631 () ValueCell!10070)

(declare-fun mapRest!33631 () (Array (_ BitVec 32) ValueCell!10070))

(declare-fun mapKey!33631 () (_ BitVec 32))

(declare-datatypes ((array!58331 0))(
  ( (array!58332 (arr!28036 (Array (_ BitVec 32) ValueCell!10070)) (size!28516 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58331)

(assert (=> mapNonEmpty!33631 (= (arr!28036 _values!1386) (store mapRest!33631 mapKey!33631 mapValue!33631))))

(declare-fun b!957072 () Bool)

(declare-fun e!539463 () Bool)

(declare-fun e!539459 () Bool)

(assert (=> b!957072 (= e!539463 (and e!539459 mapRes!33631))))

(declare-fun condMapEmpty!33631 () Bool)

(declare-fun mapDefault!33631 () ValueCell!10070)

