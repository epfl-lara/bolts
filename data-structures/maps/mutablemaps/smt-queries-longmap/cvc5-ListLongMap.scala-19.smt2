; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!536 () Bool)

(assert start!536)

(declare-fun b!3159 () Bool)

(declare-fun e!1417 () Bool)

(assert (=> b!3159 (= e!1417 false)))

(declare-fun lt!429 () Bool)

(declare-datatypes ((array!129 0))(
  ( (array!130 (arr!58 (Array (_ BitVec 32) (_ BitVec 64))) (size!120 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!129)

(declare-datatypes ((List!43 0))(
  ( (Nil!40) (Cons!39 (h!605 (_ BitVec 64)) (t!2170 List!43)) )
))
(declare-fun arrayNoDuplicates!0 (array!129 (_ BitVec 32) List!43) Bool)

(assert (=> b!3159 (= lt!429 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!40))))

(declare-fun b!3160 () Bool)

(declare-fun e!1416 () Bool)

(declare-fun tp_is_empty!97 () Bool)

(assert (=> b!3160 (= e!1416 tp_is_empty!97)))

(declare-fun b!3161 () Bool)

(declare-fun res!5040 () Bool)

(assert (=> b!3161 (=> (not res!5040) (not e!1417))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!307 0))(
  ( (V!308 (val!54 Int)) )
))
(declare-datatypes ((ValueCell!32 0))(
  ( (ValueCellFull!32 (v!1141 V!307)) (EmptyCell!32) )
))
(declare-datatypes ((array!131 0))(
  ( (array!132 (arr!59 (Array (_ BitVec 32) ValueCell!32)) (size!121 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!131)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!3161 (= res!5040 (and (= (size!121 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!120 _keys!1806) (size!121 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!101 () Bool)

(declare-fun mapRes!101 () Bool)

(declare-fun tp!341 () Bool)

(declare-fun e!1418 () Bool)

(assert (=> mapNonEmpty!101 (= mapRes!101 (and tp!341 e!1418))))

(declare-fun mapRest!101 () (Array (_ BitVec 32) ValueCell!32))

(declare-fun mapKey!101 () (_ BitVec 32))

(declare-fun mapValue!101 () ValueCell!32)

(assert (=> mapNonEmpty!101 (= (arr!59 _values!1492) (store mapRest!101 mapKey!101 mapValue!101))))

(declare-fun b!3162 () Bool)

(declare-fun e!1414 () Bool)

(assert (=> b!3162 (= e!1414 (and e!1416 mapRes!101))))

(declare-fun condMapEmpty!101 () Bool)

(declare-fun mapDefault!101 () ValueCell!32)

