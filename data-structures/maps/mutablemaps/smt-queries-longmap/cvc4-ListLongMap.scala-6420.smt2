; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82348 () Bool)

(assert start!82348)

(declare-fun b_free!18587 () Bool)

(declare-fun b_next!18587 () Bool)

(assert (=> start!82348 (= b_free!18587 (not b_next!18587))))

(declare-fun tp!64731 () Bool)

(declare-fun b_and!30093 () Bool)

(assert (=> start!82348 (= tp!64731 b_and!30093)))

(declare-fun mapIsEmpty!33928 () Bool)

(declare-fun mapRes!33928 () Bool)

(assert (=> mapIsEmpty!33928 mapRes!33928))

(declare-fun b!959597 () Bool)

(declare-fun e!540965 () Bool)

(declare-fun i!793 () (_ BitVec 32))

(assert (=> b!959597 (= e!540965 (bvslt i!793 #b00000000000000000000000000000000))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-datatypes ((V!33381 0))(
  ( (V!33382 (val!10700 Int)) )
))
(declare-datatypes ((tuple2!13886 0))(
  ( (tuple2!13887 (_1!6953 (_ BitVec 64)) (_2!6953 V!33381)) )
))
(declare-datatypes ((List!19752 0))(
  ( (Nil!19749) (Cons!19748 (h!20910 tuple2!13886) (t!28123 List!19752)) )
))
(declare-datatypes ((ListLongMap!12597 0))(
  ( (ListLongMap!12598 (toList!6314 List!19752)) )
))
(declare-fun lt!430517 () ListLongMap!12597)

(declare-fun minValue!1328 () V!33381)

(declare-fun extraKeys!1307 () (_ BitVec 32))

(declare-datatypes ((array!58705 0))(
  ( (array!58706 (arr!28222 (Array (_ BitVec 32) (_ BitVec 64))) (size!28702 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58705)

(declare-datatypes ((ValueCell!10168 0))(
  ( (ValueCellFull!10168 (v!13257 V!33381)) (EmptyCell!10168) )
))
(declare-datatypes ((array!58707 0))(
  ( (array!58708 (arr!28223 (Array (_ BitVec 32) ValueCell!10168)) (size!28703 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58707)

(declare-fun zeroValue!1328 () V!33381)

(declare-fun from!2064 () (_ BitVec 32))

(declare-fun defaultEntry!1389 () Int)

(declare-fun getCurrentListMap!3499 (array!58705 array!58707 (_ BitVec 32) (_ BitVec 32) V!33381 V!33381 (_ BitVec 32) Int) ListLongMap!12597)

(assert (=> b!959597 (= lt!430517 (getCurrentListMap!3499 _keys!1668 _values!1386 mask!2088 extraKeys!1307 zeroValue!1328 minValue!1328 from!2064 defaultEntry!1389))))

(declare-fun b!959598 () Bool)

(declare-fun e!540967 () Bool)

(declare-fun e!540964 () Bool)

(assert (=> b!959598 (= e!540967 (and e!540964 mapRes!33928))))

(declare-fun condMapEmpty!33928 () Bool)

(declare-fun mapDefault!33928 () ValueCell!10168)

