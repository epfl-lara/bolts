; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84144 () Bool)

(assert start!84144)

(declare-fun b!983386 () Bool)

(declare-fun e!554393 () Bool)

(declare-fun tp_is_empty!22919 () Bool)

(assert (=> b!983386 (= e!554393 tp_is_empty!22919)))

(declare-fun b!983387 () Bool)

(declare-fun res!658158 () Bool)

(declare-fun e!554390 () Bool)

(assert (=> b!983387 (=> (not res!658158) (not e!554390))))

(declare-datatypes ((array!61811 0))(
  ( (array!61812 (arr!29759 (Array (_ BitVec 32) (_ BitVec 64))) (size!30239 (_ BitVec 32))) )
))
(declare-fun _keys!1544 () array!61811)

(declare-fun mask!1948 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!61811 (_ BitVec 32)) Bool)

(assert (=> b!983387 (= res!658158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1544 mask!1948))))

(declare-fun mapIsEmpty!36407 () Bool)

(declare-fun mapRes!36407 () Bool)

(assert (=> mapIsEmpty!36407 mapRes!36407))

(declare-fun b!983388 () Bool)

(declare-fun e!554389 () Bool)

(declare-fun e!554391 () Bool)

(assert (=> b!983388 (= e!554389 (and e!554391 mapRes!36407))))

(declare-fun condMapEmpty!36407 () Bool)

(declare-datatypes ((V!35541 0))(
  ( (V!35542 (val!11510 Int)) )
))
(declare-datatypes ((ValueCell!10978 0))(
  ( (ValueCellFull!10978 (v!14072 V!35541)) (EmptyCell!10978) )
))
(declare-datatypes ((array!61813 0))(
  ( (array!61814 (arr!29760 (Array (_ BitVec 32) ValueCell!10978)) (size!30240 (_ BitVec 32))) )
))
(declare-fun _values!1278 () array!61813)

(declare-fun mapDefault!36407 () ValueCell!10978)

