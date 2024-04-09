; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84338 () Bool)

(assert start!84338)

(declare-fun mapIsEmpty!36698 () Bool)

(declare-fun mapRes!36698 () Bool)

(assert (=> mapIsEmpty!36698 mapRes!36698))

(declare-fun mapNonEmpty!36698 () Bool)

(declare-fun tp!69554 () Bool)

(declare-fun e!556006 () Bool)

(assert (=> mapNonEmpty!36698 (= mapRes!36698 (and tp!69554 e!556006))))

(declare-datatypes ((V!35801 0))(
  ( (V!35802 (val!11607 Int)) )
))
(declare-datatypes ((ValueCell!11075 0))(
  ( (ValueCellFull!11075 (v!14169 V!35801)) (EmptyCell!11075) )
))
(declare-datatypes ((array!62179 0))(
  ( (array!62180 (arr!29943 (Array (_ BitVec 32) ValueCell!11075)) (size!30423 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!62179)

(declare-fun mapValue!36698 () ValueCell!11075)

(declare-fun mapRest!36698 () (Array (_ BitVec 32) ValueCell!11075))

(declare-fun mapKey!36698 () (_ BitVec 32))

(assert (=> mapNonEmpty!36698 (= (arr!29943 _values!1278) (store mapRest!36698 mapKey!36698 mapValue!36698))))

(declare-fun b!986140 () Bool)

(declare-fun e!556010 () Bool)

(declare-fun e!556009 () Bool)

(assert (=> b!986140 (= e!556010 (and e!556009 mapRes!36698))))

(declare-fun condMapEmpty!36698 () Bool)

(declare-fun mapDefault!36698 () ValueCell!11075)

