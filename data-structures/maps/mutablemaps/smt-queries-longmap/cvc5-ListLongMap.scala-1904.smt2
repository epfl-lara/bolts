; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33946 () Bool)

(assert start!33946)

(declare-fun b_free!7093 () Bool)

(declare-fun b_next!7093 () Bool)

(assert (=> start!33946 (= b_free!7093 (not b_next!7093))))

(declare-fun tp!24795 () Bool)

(declare-fun b_and!14299 () Bool)

(assert (=> start!33946 (= tp!24795 b_and!14299)))

(declare-fun res!186686 () Bool)

(declare-fun e!207289 () Bool)

(assert (=> start!33946 (=> (not res!186686) (not e!207289))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33946 (= res!186686 (validMask!0 mask!2385))))

(assert (=> start!33946 e!207289))

(assert (=> start!33946 true))

(declare-fun tp_is_empty!7045 () Bool)

(assert (=> start!33946 tp_is_empty!7045))

(assert (=> start!33946 tp!24795))

(declare-datatypes ((V!10371 0))(
  ( (V!10372 (val!3567 Int)) )
))
(declare-datatypes ((ValueCell!3179 0))(
  ( (ValueCellFull!3179 (v!5729 V!10371)) (EmptyCell!3179) )
))
(declare-datatypes ((array!17655 0))(
  ( (array!17656 (arr!8351 (Array (_ BitVec 32) ValueCell!3179)) (size!8703 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17655)

(declare-fun e!207288 () Bool)

(declare-fun array_inv!6186 (array!17655) Bool)

(assert (=> start!33946 (and (array_inv!6186 _values!1525) e!207288)))

(declare-datatypes ((array!17657 0))(
  ( (array!17658 (arr!8352 (Array (_ BitVec 32) (_ BitVec 64))) (size!8704 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17657)

(declare-fun array_inv!6187 (array!17657) Bool)

(assert (=> start!33946 (array_inv!6187 _keys!1895)))

(declare-fun mapIsEmpty!11976 () Bool)

(declare-fun mapRes!11976 () Bool)

(assert (=> mapIsEmpty!11976 mapRes!11976))

(declare-fun b!337810 () Bool)

(declare-fun e!207291 () Bool)

(assert (=> b!337810 (= e!207291 (and (bvslt #b00000000000000000000000000000000 (size!8704 _keys!1895)) (bvsge (size!8704 _keys!1895) #b01111111111111111111111111111111)))))

(declare-datatypes ((Unit!10467 0))(
  ( (Unit!10468) )
))
(declare-fun lt!160592 () Unit!10467)

(declare-fun e!207292 () Unit!10467)

(assert (=> b!337810 (= lt!160592 e!207292)))

(declare-fun c!52283 () Bool)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!337810 (= c!52283 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!337811 () Bool)

(declare-fun Unit!10469 () Unit!10467)

(assert (=> b!337811 (= e!207292 Unit!10469)))

(declare-fun b!337812 () Bool)

(declare-fun e!207290 () Bool)

(assert (=> b!337812 (= e!207288 (and e!207290 mapRes!11976))))

(declare-fun condMapEmpty!11976 () Bool)

(declare-fun mapDefault!11976 () ValueCell!3179)

