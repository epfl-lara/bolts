; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108814 () Bool)

(assert start!108814)

(declare-fun b_free!28291 () Bool)

(declare-fun b_next!28291 () Bool)

(assert (=> start!108814 (= b_free!28291 (not b_next!28291))))

(declare-fun tp!99990 () Bool)

(declare-fun b_and!46367 () Bool)

(assert (=> start!108814 (= tp!99990 b_and!46367)))

(declare-fun b!1284426 () Bool)

(declare-fun res!853345 () Bool)

(declare-fun e!733719 () Bool)

(assert (=> b!1284426 (=> (not res!853345) (not e!733719))))

(declare-datatypes ((array!84877 0))(
  ( (array!84878 (arr!40936 (Array (_ BitVec 32) (_ BitVec 64))) (size!41487 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84877)

(declare-datatypes ((List!29178 0))(
  ( (Nil!29175) (Cons!29174 (h!30383 (_ BitVec 64)) (t!42729 List!29178)) )
))
(declare-fun arrayNoDuplicates!0 (array!84877 (_ BitVec 32) List!29178) Bool)

(assert (=> b!1284426 (= res!853345 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29175))))

(declare-fun b!1284427 () Bool)

(declare-fun e!733717 () Bool)

(declare-fun tp_is_empty!33931 () Bool)

(assert (=> b!1284427 (= e!733717 tp_is_empty!33931)))

(declare-fun b!1284428 () Bool)

(declare-fun res!853347 () Bool)

(assert (=> b!1284428 (=> (not res!853347) (not e!733719))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84877 (_ BitVec 32)) Bool)

(assert (=> b!1284428 (= res!853347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1284429 () Bool)

(declare-fun e!733720 () Bool)

(declare-fun mapRes!52454 () Bool)

(assert (=> b!1284429 (= e!733720 (and e!733717 mapRes!52454))))

(declare-fun condMapEmpty!52454 () Bool)

(declare-datatypes ((V!50345 0))(
  ( (V!50346 (val!17040 Int)) )
))
(declare-datatypes ((ValueCell!16067 0))(
  ( (ValueCellFull!16067 (v!19640 V!50345)) (EmptyCell!16067) )
))
(declare-datatypes ((array!84879 0))(
  ( (array!84880 (arr!40937 (Array (_ BitVec 32) ValueCell!16067)) (size!41488 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84879)

(declare-fun mapDefault!52454 () ValueCell!16067)

