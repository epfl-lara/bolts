; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84132 () Bool)

(assert start!84132)

(declare-fun mapNonEmpty!36389 () Bool)

(declare-fun mapRes!36389 () Bool)

(declare-fun tp!69074 () Bool)

(declare-fun e!554301 () Bool)

(assert (=> mapNonEmpty!36389 (= mapRes!36389 (and tp!69074 e!554301))))

(declare-datatypes ((V!35525 0))(
  ( (V!35526 (val!11504 Int)) )
))
(declare-datatypes ((ValueCell!10972 0))(
  ( (ValueCellFull!10972 (v!14066 V!35525)) (EmptyCell!10972) )
))
(declare-fun mapRest!36389 () (Array (_ BitVec 32) ValueCell!10972))

(declare-fun mapValue!36389 () ValueCell!10972)

(declare-fun mapKey!36389 () (_ BitVec 32))

(declare-datatypes ((array!61791 0))(
  ( (array!61792 (arr!29749 (Array (_ BitVec 32) ValueCell!10972)) (size!30229 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61791)

(assert (=> mapNonEmpty!36389 (= (arr!29749 _values!1278) (store mapRest!36389 mapKey!36389 mapValue!36389))))

(declare-fun b!983278 () Bool)

(declare-fun e!554299 () Bool)

(declare-fun e!554300 () Bool)

(assert (=> b!983278 (= e!554299 (and e!554300 mapRes!36389))))

(declare-fun condMapEmpty!36389 () Bool)

(declare-fun mapDefault!36389 () ValueCell!10972)

