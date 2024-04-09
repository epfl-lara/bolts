; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112522 () Bool)

(assert start!112522)

(declare-fun b_free!30881 () Bool)

(declare-fun b_next!30881 () Bool)

(assert (=> start!112522 (= b_free!30881 (not b_next!30881))))

(declare-fun tp!108280 () Bool)

(declare-fun b_and!49773 () Bool)

(assert (=> start!112522 (= tp!108280 b_and!49773)))

(declare-fun b!1333937 () Bool)

(declare-fun res!885369 () Bool)

(declare-fun e!759827 () Bool)

(assert (=> b!1333937 (=> (not res!885369) (not e!759827))))

(declare-datatypes ((array!90429 0))(
  ( (array!90430 (arr!43676 (Array (_ BitVec 32) (_ BitVec 64))) (size!44227 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90429)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90429 (_ BitVec 32)) Bool)

(assert (=> b!1333937 (= res!885369 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1333938 () Bool)

(declare-fun e!759828 () Bool)

(declare-fun tp_is_empty!36791 () Bool)

(assert (=> b!1333938 (= e!759828 tp_is_empty!36791)))

(declare-fun b!1333939 () Bool)

(declare-fun e!759826 () Bool)

(declare-fun mapRes!56860 () Bool)

(assert (=> b!1333939 (= e!759826 (and e!759828 mapRes!56860))))

(declare-fun condMapEmpty!56860 () Bool)

(declare-datatypes ((V!54157 0))(
  ( (V!54158 (val!18470 Int)) )
))
(declare-datatypes ((ValueCell!17497 0))(
  ( (ValueCellFull!17497 (v!21105 V!54157)) (EmptyCell!17497) )
))
(declare-datatypes ((array!90431 0))(
  ( (array!90432 (arr!43677 (Array (_ BitVec 32) ValueCell!17497)) (size!44228 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90431)

(declare-fun mapDefault!56860 () ValueCell!17497)

