; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104592 () Bool)

(assert start!104592)

(declare-fun b!1247001 () Bool)

(declare-fun e!707382 () Bool)

(declare-fun tp_is_empty!31315 () Bool)

(assert (=> b!1247001 (= e!707382 tp_is_empty!31315)))

(declare-fun b!1247002 () Bool)

(declare-fun res!832203 () Bool)

(declare-fun e!707381 () Bool)

(assert (=> b!1247002 (=> (not res!832203) (not e!707381))))

(declare-datatypes ((array!80305 0))(
  ( (array!80306 (arr!38720 (Array (_ BitVec 32) (_ BitVec 64))) (size!39257 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80305)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80305 (_ BitVec 32)) Bool)

(assert (=> b!1247002 (= res!832203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!48718 () Bool)

(declare-fun mapRes!48718 () Bool)

(declare-fun tp!92820 () Bool)

(assert (=> mapNonEmpty!48718 (= mapRes!48718 (and tp!92820 e!707382))))

(declare-fun mapKey!48718 () (_ BitVec 32))

(declare-datatypes ((V!47119 0))(
  ( (V!47120 (val!15720 Int)) )
))
(declare-datatypes ((ValueCell!14894 0))(
  ( (ValueCellFull!14894 (v!18415 V!47119)) (EmptyCell!14894) )
))
(declare-fun mapRest!48718 () (Array (_ BitVec 32) ValueCell!14894))

(declare-fun mapValue!48718 () ValueCell!14894)

(declare-datatypes ((array!80307 0))(
  ( (array!80308 (arr!38721 (Array (_ BitVec 32) ValueCell!14894)) (size!39258 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80307)

(assert (=> mapNonEmpty!48718 (= (arr!38721 _values!914) (store mapRest!48718 mapKey!48718 mapValue!48718))))

(declare-fun b!1247003 () Bool)

(declare-fun e!707380 () Bool)

(declare-fun e!707383 () Bool)

(assert (=> b!1247003 (= e!707380 (and e!707383 mapRes!48718))))

(declare-fun condMapEmpty!48718 () Bool)

(declare-fun mapDefault!48718 () ValueCell!14894)

