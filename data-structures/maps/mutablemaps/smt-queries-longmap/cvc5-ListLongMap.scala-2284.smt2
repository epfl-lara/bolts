; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37174 () Bool)

(assert start!37174)

(declare-fun b_free!8293 () Bool)

(declare-fun b_next!8293 () Bool)

(assert (=> start!37174 (= b_free!8293 (not b_next!8293))))

(declare-fun tp!29594 () Bool)

(declare-fun b_and!15553 () Bool)

(assert (=> start!37174 (= tp!29594 b_and!15553)))

(declare-fun b!374832 () Bool)

(declare-fun res!211574 () Bool)

(declare-fun e!228411 () Bool)

(assert (=> b!374832 (=> (not res!211574) (not e!228411))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!21781 0))(
  ( (array!21782 (arr!10356 (Array (_ BitVec 32) (_ BitVec 64))) (size!10708 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21781)

(assert (=> b!374832 (= res!211574 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10708 _keys!658))))))

(declare-fun b!374833 () Bool)

(declare-fun res!211573 () Bool)

(assert (=> b!374833 (=> (not res!211573) (not e!228411))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21781 (_ BitVec 32)) Bool)

(assert (=> b!374833 (= res!211573 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!374834 () Bool)

(declare-fun res!211569 () Bool)

(assert (=> b!374834 (=> (not res!211569) (not e!228411))))

(declare-datatypes ((List!5850 0))(
  ( (Nil!5847) (Cons!5846 (h!6702 (_ BitVec 64)) (t!11008 List!5850)) )
))
(declare-fun arrayNoDuplicates!0 (array!21781 (_ BitVec 32) List!5850) Bool)

(assert (=> b!374834 (= res!211569 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5847))))

(declare-fun mapNonEmpty!14976 () Bool)

(declare-fun mapRes!14976 () Bool)

(declare-fun tp!29595 () Bool)

(declare-fun e!228404 () Bool)

(assert (=> mapNonEmpty!14976 (= mapRes!14976 (and tp!29595 e!228404))))

(declare-datatypes ((V!13027 0))(
  ( (V!13028 (val!4515 Int)) )
))
(declare-datatypes ((ValueCell!4127 0))(
  ( (ValueCellFull!4127 (v!6708 V!13027)) (EmptyCell!4127) )
))
(declare-fun mapValue!14976 () ValueCell!4127)

(declare-fun mapKey!14976 () (_ BitVec 32))

(declare-fun mapRest!14976 () (Array (_ BitVec 32) ValueCell!4127))

(declare-datatypes ((array!21783 0))(
  ( (array!21784 (arr!10357 (Array (_ BitVec 32) ValueCell!4127)) (size!10709 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21783)

(assert (=> mapNonEmpty!14976 (= (arr!10357 _values!506) (store mapRest!14976 mapKey!14976 mapValue!14976))))

(declare-fun b!374835 () Bool)

(declare-fun res!211571 () Bool)

(assert (=> b!374835 (=> (not res!211571) (not e!228411))))

(assert (=> b!374835 (= res!211571 (or (= (select (arr!10356 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10356 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14976 () Bool)

(assert (=> mapIsEmpty!14976 mapRes!14976))

(declare-fun b!374836 () Bool)

(declare-fun res!211578 () Bool)

(declare-fun e!228407 () Bool)

(assert (=> b!374836 (=> (not res!211578) (not e!228407))))

(declare-fun lt!173239 () array!21781)

(assert (=> b!374836 (= res!211578 (arrayNoDuplicates!0 lt!173239 #b00000000000000000000000000000000 Nil!5847))))

(declare-fun res!211580 () Bool)

(assert (=> start!37174 (=> (not res!211580) (not e!228411))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37174 (= res!211580 (validMask!0 mask!970))))

(assert (=> start!37174 e!228411))

(declare-fun e!228406 () Bool)

(declare-fun array_inv!7630 (array!21783) Bool)

(assert (=> start!37174 (and (array_inv!7630 _values!506) e!228406)))

(assert (=> start!37174 tp!29594))

(assert (=> start!37174 true))

(declare-fun tp_is_empty!8941 () Bool)

(assert (=> start!37174 tp_is_empty!8941))

(declare-fun array_inv!7631 (array!21781) Bool)

(assert (=> start!37174 (array_inv!7631 _keys!658)))

(declare-fun b!374837 () Bool)

(declare-fun e!228410 () Bool)

(assert (=> b!374837 (= e!228410 tp_is_empty!8941)))

(declare-fun b!374838 () Bool)

(assert (=> b!374838 (= e!228411 e!228407)))

(declare-fun res!211572 () Bool)

(assert (=> b!374838 (=> (not res!211572) (not e!228407))))

(assert (=> b!374838 (= res!211572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!173239 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!374838 (= lt!173239 (array!21782 (store (arr!10356 _keys!658) i!548 k!778) (size!10708 _keys!658)))))

(declare-fun b!374839 () Bool)

(declare-fun res!211579 () Bool)

(assert (=> b!374839 (=> (not res!211579) (not e!228411))))

(declare-fun arrayContainsKey!0 (array!21781 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!374839 (= res!211579 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!374840 () Bool)

(assert (=> b!374840 (= e!228406 (and e!228410 mapRes!14976))))

(declare-fun condMapEmpty!14976 () Bool)

(declare-fun mapDefault!14976 () ValueCell!4127)

