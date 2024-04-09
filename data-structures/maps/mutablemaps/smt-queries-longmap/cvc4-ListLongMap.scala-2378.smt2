; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37742 () Bool)

(assert start!37742)

(declare-fun b_free!8837 () Bool)

(declare-fun b_next!8837 () Bool)

(assert (=> start!37742 (= b_free!8837 (not b_next!8837))))

(declare-fun tp!31263 () Bool)

(declare-fun b_and!16097 () Bool)

(assert (=> start!37742 (= tp!31263 b_and!16097)))

(declare-fun b!386831 () Bool)

(declare-fun e!234596 () Bool)

(declare-fun tp_is_empty!9509 () Bool)

(assert (=> b!386831 (= e!234596 tp_is_empty!9509)))

(declare-fun b!386832 () Bool)

(declare-fun e!234594 () Bool)

(declare-fun e!234597 () Bool)

(assert (=> b!386832 (= e!234594 e!234597)))

(declare-fun res!221015 () Bool)

(assert (=> b!386832 (=> (not res!221015) (not e!234597))))

(declare-datatypes ((array!22887 0))(
  ( (array!22888 (arr!10909 (Array (_ BitVec 32) (_ BitVec 64))) (size!11261 (_ BitVec 32))) )
))
(declare-fun lt!181904 () array!22887)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22887 (_ BitVec 32)) Bool)

(assert (=> b!386832 (= res!221015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!181904 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!22887)

(assert (=> b!386832 (= lt!181904 (array!22888 (store (arr!10909 _keys!658) i!548 k!778) (size!11261 _keys!658)))))

(declare-fun b!386833 () Bool)

(assert (=> b!386833 (= e!234597 false)))

(declare-datatypes ((V!13783 0))(
  ( (V!13784 (val!4799 Int)) )
))
(declare-datatypes ((ValueCell!4411 0))(
  ( (ValueCellFull!4411 (v!6992 V!13783)) (EmptyCell!4411) )
))
(declare-datatypes ((array!22889 0))(
  ( (array!22890 (arr!10910 (Array (_ BitVec 32) ValueCell!4411)) (size!11262 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22889)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6392 0))(
  ( (tuple2!6393 (_1!3206 (_ BitVec 64)) (_2!3206 V!13783)) )
))
(declare-datatypes ((List!6276 0))(
  ( (Nil!6273) (Cons!6272 (h!7128 tuple2!6392) (t!11434 List!6276)) )
))
(declare-datatypes ((ListLongMap!5319 0))(
  ( (ListLongMap!5320 (toList!2675 List!6276)) )
))
(declare-fun lt!181906 () ListLongMap!5319)

(declare-fun zeroValue!472 () V!13783)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13783)

(declare-fun minValue!472 () V!13783)

(declare-fun getCurrentListMapNoExtraKeys!909 (array!22887 array!22889 (_ BitVec 32) (_ BitVec 32) V!13783 V!13783 (_ BitVec 32) Int) ListLongMap!5319)

(assert (=> b!386833 (= lt!181906 (getCurrentListMapNoExtraKeys!909 lt!181904 (array!22890 (store (arr!10910 _values!506) i!548 (ValueCellFull!4411 v!373)) (size!11262 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!181905 () ListLongMap!5319)

(assert (=> b!386833 (= lt!181905 (getCurrentListMapNoExtraKeys!909 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!221016 () Bool)

(assert (=> start!37742 (=> (not res!221016) (not e!234594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37742 (= res!221016 (validMask!0 mask!970))))

(assert (=> start!37742 e!234594))

(declare-fun e!234595 () Bool)

(declare-fun array_inv!8000 (array!22889) Bool)

(assert (=> start!37742 (and (array_inv!8000 _values!506) e!234595)))

(assert (=> start!37742 tp!31263))

(assert (=> start!37742 true))

(assert (=> start!37742 tp_is_empty!9509))

(declare-fun array_inv!8001 (array!22887) Bool)

(assert (=> start!37742 (array_inv!8001 _keys!658)))

(declare-fun b!386834 () Bool)

(declare-fun res!221014 () Bool)

(assert (=> b!386834 (=> (not res!221014) (not e!234594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!386834 (= res!221014 (validKeyInArray!0 k!778))))

(declare-fun b!386835 () Bool)

(declare-fun res!221019 () Bool)

(assert (=> b!386835 (=> (not res!221019) (not e!234594))))

(declare-datatypes ((List!6277 0))(
  ( (Nil!6274) (Cons!6273 (h!7129 (_ BitVec 64)) (t!11435 List!6277)) )
))
(declare-fun arrayNoDuplicates!0 (array!22887 (_ BitVec 32) List!6277) Bool)

(assert (=> b!386835 (= res!221019 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6274))))

(declare-fun b!386836 () Bool)

(declare-fun res!221021 () Bool)

(assert (=> b!386836 (=> (not res!221021) (not e!234594))))

(assert (=> b!386836 (= res!221021 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11261 _keys!658))))))

(declare-fun b!386837 () Bool)

(declare-fun res!221013 () Bool)

(assert (=> b!386837 (=> (not res!221013) (not e!234597))))

(assert (=> b!386837 (= res!221013 (arrayNoDuplicates!0 lt!181904 #b00000000000000000000000000000000 Nil!6274))))

(declare-fun b!386838 () Bool)

(declare-fun res!221020 () Bool)

(assert (=> b!386838 (=> (not res!221020) (not e!234594))))

(assert (=> b!386838 (= res!221020 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15828 () Bool)

(declare-fun mapRes!15828 () Bool)

(assert (=> mapIsEmpty!15828 mapRes!15828))

(declare-fun b!386839 () Bool)

(declare-fun e!234592 () Bool)

(assert (=> b!386839 (= e!234592 tp_is_empty!9509)))

(declare-fun b!386840 () Bool)

(declare-fun res!221018 () Bool)

(assert (=> b!386840 (=> (not res!221018) (not e!234594))))

(assert (=> b!386840 (= res!221018 (or (= (select (arr!10909 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10909 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!386841 () Bool)

(declare-fun res!221017 () Bool)

(assert (=> b!386841 (=> (not res!221017) (not e!234594))))

(declare-fun arrayContainsKey!0 (array!22887 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!386841 (= res!221017 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15828 () Bool)

(declare-fun tp!31262 () Bool)

(assert (=> mapNonEmpty!15828 (= mapRes!15828 (and tp!31262 e!234592))))

(declare-fun mapRest!15828 () (Array (_ BitVec 32) ValueCell!4411))

(declare-fun mapKey!15828 () (_ BitVec 32))

(declare-fun mapValue!15828 () ValueCell!4411)

(assert (=> mapNonEmpty!15828 (= (arr!10910 _values!506) (store mapRest!15828 mapKey!15828 mapValue!15828))))

(declare-fun b!386842 () Bool)

(declare-fun res!221012 () Bool)

(assert (=> b!386842 (=> (not res!221012) (not e!234594))))

(assert (=> b!386842 (= res!221012 (and (= (size!11262 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11261 _keys!658) (size!11262 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!386843 () Bool)

(assert (=> b!386843 (= e!234595 (and e!234596 mapRes!15828))))

(declare-fun condMapEmpty!15828 () Bool)

(declare-fun mapDefault!15828 () ValueCell!4411)

