; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!70394 () Bool)

(assert start!70394)

(declare-fun b_free!12727 () Bool)

(declare-fun b_next!12727 () Bool)

(assert (=> start!70394 (= b_free!12727 (not b_next!12727))))

(declare-fun tp!44908 () Bool)

(declare-fun b_and!21557 () Bool)

(assert (=> start!70394 (= tp!44908 b_and!21557)))

(declare-fun res!558018 () Bool)

(declare-fun e!453572 () Bool)

(assert (=> start!70394 (=> (not res!558018) (not e!453572))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70394 (= res!558018 (validMask!0 mask!1312))))

(assert (=> start!70394 e!453572))

(declare-fun tp_is_empty!14437 () Bool)

(assert (=> start!70394 tp_is_empty!14437))

(declare-datatypes ((array!45048 0))(
  ( (array!45049 (arr!21576 (Array (_ BitVec 32) (_ BitVec 64))) (size!21997 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45048)

(declare-fun array_inv!17233 (array!45048) Bool)

(assert (=> start!70394 (array_inv!17233 _keys!976)))

(assert (=> start!70394 true))

(declare-datatypes ((V!24251 0))(
  ( (V!24252 (val!7266 Int)) )
))
(declare-datatypes ((ValueCell!6803 0))(
  ( (ValueCellFull!6803 (v!9691 V!24251)) (EmptyCell!6803) )
))
(declare-datatypes ((array!45050 0))(
  ( (array!45051 (arr!21577 (Array (_ BitVec 32) ValueCell!6803)) (size!21998 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45050)

(declare-fun e!453568 () Bool)

(declare-fun array_inv!17234 (array!45050) Bool)

(assert (=> start!70394 (and (array_inv!17234 _values!788) e!453568)))

(assert (=> start!70394 tp!44908))

(declare-fun b!817329 () Bool)

(declare-fun e!453570 () Bool)

(declare-fun mapRes!23248 () Bool)

(assert (=> b!817329 (= e!453568 (and e!453570 mapRes!23248))))

(declare-fun condMapEmpty!23248 () Bool)

(declare-fun mapDefault!23248 () ValueCell!6803)

