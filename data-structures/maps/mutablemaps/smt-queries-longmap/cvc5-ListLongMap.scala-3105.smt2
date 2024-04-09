; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43622 () Bool)

(assert start!43622)

(declare-fun b_free!12349 () Bool)

(declare-fun b_next!12349 () Bool)

(assert (=> start!43622 (= b_free!12349 (not b_next!12349))))

(declare-fun tp!43335 () Bool)

(declare-fun b_and!21131 () Bool)

(assert (=> start!43622 (= tp!43335 b_and!21131)))

(declare-fun b!482971 () Bool)

(declare-fun e!284235 () Bool)

(declare-datatypes ((array!31349 0))(
  ( (array!31350 (arr!15072 (Array (_ BitVec 32) (_ BitVec 64))) (size!15430 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31349)

(declare-fun k!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!482971 (= e!284235 (arrayContainsKey!0 _keys!1874 k!1332 #b00000000000000000000000000000000))))

(declare-fun b!482972 () Bool)

(declare-fun e!284233 () Bool)

(declare-datatypes ((SeekEntryResult!3562 0))(
  ( (MissingZero!3562 (index!16427 (_ BitVec 32))) (Found!3562 (index!16428 (_ BitVec 32))) (Intermediate!3562 (undefined!4374 Bool) (index!16429 (_ BitVec 32)) (x!45361 (_ BitVec 32))) (Undefined!3562) (MissingVacant!3562 (index!16430 (_ BitVec 32))) )
))
(declare-fun lt!218961 () SeekEntryResult!3562)

(assert (=> b!482972 (= e!284233 (and (bvsge (index!16428 lt!218961) #b00000000000000000000000000000000) (bvslt (index!16428 lt!218961) (size!15430 _keys!1874))))))

(declare-fun mapIsEmpty!22507 () Bool)

(declare-fun mapRes!22507 () Bool)

(assert (=> mapIsEmpty!22507 mapRes!22507))

(declare-fun b!482973 () Bool)

(declare-fun e!284234 () Bool)

(declare-fun tp_is_empty!13861 () Bool)

(assert (=> b!482973 (= e!284234 tp_is_empty!13861)))

(declare-fun b!482974 () Bool)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!482974 (= e!284235 (ite (= k!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!482975 () Bool)

(declare-fun e!284232 () Bool)

(assert (=> b!482975 (= e!284232 tp_is_empty!13861)))

(declare-fun b!482976 () Bool)

(declare-fun res!287902 () Bool)

(declare-fun e!284230 () Bool)

(assert (=> b!482976 (=> (not res!287902) (not e!284230))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19553 0))(
  ( (V!19554 (val!6978 Int)) )
))
(declare-datatypes ((ValueCell!6569 0))(
  ( (ValueCellFull!6569 (v!9269 V!19553)) (EmptyCell!6569) )
))
(declare-datatypes ((array!31351 0))(
  ( (array!31352 (arr!15073 (Array (_ BitVec 32) ValueCell!6569)) (size!15431 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31351)

(assert (=> b!482976 (= res!287902 (and (= (size!15431 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15430 _keys!1874) (size!15431 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!482977 () Bool)

(declare-fun res!287903 () Bool)

(assert (=> b!482977 (=> (not res!287903) (not e!284230))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!482977 (= res!287903 (validKeyInArray!0 k!1332))))

(declare-fun b!482978 () Bool)

(declare-fun e!284236 () Bool)

(assert (=> b!482978 (= e!284236 (and e!284232 mapRes!22507))))

(declare-fun condMapEmpty!22507 () Bool)

(declare-fun mapDefault!22507 () ValueCell!6569)

