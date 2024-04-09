; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37682 () Bool)

(assert start!37682)

(declare-fun b_free!8777 () Bool)

(declare-fun b_next!8777 () Bool)

(assert (=> start!37682 (= b_free!8777 (not b_next!8777))))

(declare-fun tp!31083 () Bool)

(declare-fun b_and!16037 () Bool)

(assert (=> start!37682 (= tp!31083 b_and!16037)))

(declare-fun b!385661 () Bool)

(declare-fun res!220120 () Bool)

(declare-fun e!234053 () Bool)

(assert (=> b!385661 (=> (not res!220120) (not e!234053))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22775 0))(
  ( (array!22776 (arr!10853 (Array (_ BitVec 32) (_ BitVec 64))) (size!11205 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22775)

(assert (=> b!385661 (= res!220120 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11205 _keys!658))))))

(declare-fun b!385662 () Bool)

(declare-fun res!220112 () Bool)

(assert (=> b!385662 (=> (not res!220112) (not e!234053))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22775 (_ BitVec 32)) Bool)

(assert (=> b!385662 (= res!220112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!385663 () Bool)

(declare-fun res!220113 () Bool)

(assert (=> b!385663 (=> (not res!220113) (not e!234053))))

(declare-datatypes ((List!6236 0))(
  ( (Nil!6233) (Cons!6232 (h!7088 (_ BitVec 64)) (t!11394 List!6236)) )
))
(declare-fun arrayNoDuplicates!0 (array!22775 (_ BitVec 32) List!6236) Bool)

(assert (=> b!385663 (= res!220113 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6233))))

(declare-fun b!385664 () Bool)

(declare-fun res!220121 () Bool)

(declare-fun e!234052 () Bool)

(assert (=> b!385664 (=> (not res!220121) (not e!234052))))

(declare-fun lt!181636 () array!22775)

(assert (=> b!385664 (= res!220121 (arrayNoDuplicates!0 lt!181636 #b00000000000000000000000000000000 Nil!6233))))

(declare-fun b!385665 () Bool)

(declare-fun res!220117 () Bool)

(assert (=> b!385665 (=> (not res!220117) (not e!234053))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!13703 0))(
  ( (V!13704 (val!4769 Int)) )
))
(declare-datatypes ((ValueCell!4381 0))(
  ( (ValueCellFull!4381 (v!6962 V!13703)) (EmptyCell!4381) )
))
(declare-datatypes ((array!22777 0))(
  ( (array!22778 (arr!10854 (Array (_ BitVec 32) ValueCell!4381)) (size!11206 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22777)

(assert (=> b!385665 (= res!220117 (and (= (size!11206 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11205 _keys!658) (size!11206 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!385666 () Bool)

(declare-fun res!220119 () Bool)

(assert (=> b!385666 (=> (not res!220119) (not e!234053))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!385666 (= res!220119 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!385667 () Bool)

(declare-fun e!234054 () Bool)

(declare-fun tp_is_empty!9449 () Bool)

(assert (=> b!385667 (= e!234054 tp_is_empty!9449)))

(declare-fun b!385668 () Bool)

(declare-fun res!220118 () Bool)

(assert (=> b!385668 (=> (not res!220118) (not e!234053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!385668 (= res!220118 (validKeyInArray!0 k!778))))

(declare-fun b!385669 () Bool)

(assert (=> b!385669 (= e!234053 e!234052)))

(declare-fun res!220115 () Bool)

(assert (=> b!385669 (=> (not res!220115) (not e!234052))))

(assert (=> b!385669 (= res!220115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181636 mask!970))))

(assert (=> b!385669 (= lt!181636 (array!22776 (store (arr!10853 _keys!658) i!548 k!778) (size!11205 _keys!658)))))

(declare-fun mapNonEmpty!15738 () Bool)

(declare-fun mapRes!15738 () Bool)

(declare-fun tp!31082 () Bool)

(assert (=> mapNonEmpty!15738 (= mapRes!15738 (and tp!31082 e!234054))))

(declare-fun mapRest!15738 () (Array (_ BitVec 32) ValueCell!4381))

(declare-fun mapKey!15738 () (_ BitVec 32))

(declare-fun mapValue!15738 () ValueCell!4381)

(assert (=> mapNonEmpty!15738 (= (arr!10854 _values!506) (store mapRest!15738 mapKey!15738 mapValue!15738))))

(declare-fun b!385671 () Bool)

(declare-fun e!234055 () Bool)

(declare-fun e!234057 () Bool)

(assert (=> b!385671 (= e!234055 (and e!234057 mapRes!15738))))

(declare-fun condMapEmpty!15738 () Bool)

(declare-fun mapDefault!15738 () ValueCell!4381)

