; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82306 () Bool)

(assert start!82306)

(declare-fun b_free!18551 () Bool)

(declare-fun b_next!18551 () Bool)

(assert (=> start!82306 (= b_free!18551 (not b_next!18551))))

(declare-fun tp!64614 () Bool)

(declare-fun b_and!30057 () Bool)

(assert (=> start!82306 (= tp!64614 b_and!30057)))

(declare-fun b!959002 () Bool)

(declare-fun res!642051 () Bool)

(declare-fun e!540652 () Bool)

(assert (=> b!959002 (=> (not res!642051) (not e!540652))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58627 0))(
  ( (array!58628 (arr!28183 (Array (_ BitVec 32) (_ BitVec 64))) (size!28663 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58627)

(declare-datatypes ((V!33325 0))(
  ( (V!33326 (val!10679 Int)) )
))
(declare-datatypes ((ValueCell!10147 0))(
  ( (ValueCellFull!10147 (v!13236 V!33325)) (EmptyCell!10147) )
))
(declare-datatypes ((array!58629 0))(
  ( (array!58630 (arr!28184 (Array (_ BitVec 32) ValueCell!10147)) (size!28664 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58629)

(assert (=> b!959002 (= res!642051 (and (= (size!28664 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28663 _keys!1668) (size!28664 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!959003 () Bool)

(declare-fun res!642045 () Bool)

(assert (=> b!959003 (=> (not res!642045) (not e!540652))))

(declare-datatypes ((List!19727 0))(
  ( (Nil!19724) (Cons!19723 (h!20885 (_ BitVec 64)) (t!28098 List!19727)) )
))
(declare-fun arrayNoDuplicates!0 (array!58627 (_ BitVec 32) List!19727) Bool)

(assert (=> b!959003 (= res!642045 (arrayNoDuplicates!0 _keys!1668 #b00000000000000000000000000000000 Nil!19724))))

(declare-fun b!959004 () Bool)

(declare-fun e!540649 () Bool)

(declare-fun e!540650 () Bool)

(declare-fun mapRes!33865 () Bool)

(assert (=> b!959004 (= e!540649 (and e!540650 mapRes!33865))))

(declare-fun condMapEmpty!33865 () Bool)

(declare-fun mapDefault!33865 () ValueCell!10147)

