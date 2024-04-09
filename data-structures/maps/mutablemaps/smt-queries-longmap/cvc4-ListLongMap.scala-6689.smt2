; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84138 () Bool)

(assert start!84138)

(declare-fun mapIsEmpty!36398 () Bool)

(declare-fun mapRes!36398 () Bool)

(assert (=> mapIsEmpty!36398 mapRes!36398))

(declare-fun b!983332 () Bool)

(declare-fun e!554346 () Bool)

(assert (=> b!983332 (= e!554346 false)))

(declare-fun lt!436471 () Bool)

(declare-datatypes ((array!61799 0))(
  ( (array!61800 (arr!29753 (Array (_ BitVec 32) (_ BitVec 64))) (size!30233 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61799)

(declare-datatypes ((List!20743 0))(
  ( (Nil!20740) (Cons!20739 (h!21901 (_ BitVec 64)) (t!29542 List!20743)) )
))
(declare-fun arrayNoDuplicates!0 (array!61799 (_ BitVec 32) List!20743) Bool)

(assert (=> b!983332 (= lt!436471 (arrayNoDuplicates!0 _keys!1544 #b00000000000000000000000000000000 Nil!20740))))

(declare-fun b!983333 () Bool)

(declare-fun e!554348 () Bool)

(declare-fun tp_is_empty!22913 () Bool)

(assert (=> b!983333 (= e!554348 tp_is_empty!22913)))

(declare-fun b!983334 () Bool)

(declare-fun e!554347 () Bool)

(assert (=> b!983334 (= e!554347 tp_is_empty!22913)))

(declare-fun b!983335 () Bool)

(declare-fun res!658130 () Bool)

(assert (=> b!983335 (=> (not res!658130) (not e!554346))))

(declare-fun mask!1948 () (_ BitVec 32))

(declare-datatypes ((V!35533 0))(
  ( (V!35534 (val!11507 Int)) )
))
(declare-datatypes ((ValueCell!10975 0))(
  ( (ValueCellFull!10975 (v!14069 V!35533)) (EmptyCell!10975) )
))
(declare-datatypes ((array!61801 0))(
  ( (array!61802 (arr!29754 (Array (_ BitVec 32) ValueCell!10975)) (size!30234 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61801)

(declare-fun extraKeys!1199 () (_ BitVec 32))

(assert (=> b!983335 (= res!658130 (and (= (size!30234 _values!1278) (bvadd #b00000000000000000000000000000001 mask!1948)) (= (size!30233 _keys!1544) (size!30234 _values!1278)) (bvsge mask!1948 #b00000000000000000000000000000000) (bvsge extraKeys!1199 #b00000000000000000000000000000000) (bvsle extraKeys!1199 #b00000000000000000000000000000011)))))

(declare-fun b!983336 () Bool)

(declare-fun e!554344 () Bool)

(assert (=> b!983336 (= e!554344 (and e!554347 mapRes!36398))))

(declare-fun condMapEmpty!36398 () Bool)

(declare-fun mapDefault!36398 () ValueCell!10975)

