; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37214 () Bool)

(assert start!37214)

(declare-fun b_free!8333 () Bool)

(declare-fun b_next!8333 () Bool)

(assert (=> start!37214 (= b_free!8333 (not b_next!8333))))

(declare-fun tp!29715 () Bool)

(declare-fun b_and!15593 () Bool)

(assert (=> start!37214 (= tp!29715 b_and!15593)))

(declare-fun b!375741 () Bool)

(declare-fun e!228891 () Bool)

(declare-fun e!228888 () Bool)

(assert (=> b!375741 (= e!228891 e!228888)))

(declare-fun res!212303 () Bool)

(assert (=> b!375741 (=> (not res!212303) (not e!228888))))

(declare-datatypes ((array!21861 0))(
  ( (array!21862 (arr!10396 (Array (_ BitVec 32) (_ BitVec 64))) (size!10748 (_ BitVec 32))) )
))
(declare-fun lt!174163 () array!21861)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21861 (_ BitVec 32)) Bool)

(assert (=> b!375741 (= res!212303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174163 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21861)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!375741 (= lt!174163 (array!21862 (store (arr!10396 _keys!658) i!548 k!778) (size!10748 _keys!658)))))

(declare-fun b!375742 () Bool)

(declare-fun res!212302 () Bool)

(assert (=> b!375742 (=> (not res!212302) (not e!228891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!375742 (= res!212302 (validKeyInArray!0 k!778))))

(declare-fun res!212309 () Bool)

(assert (=> start!37214 (=> (not res!212309) (not e!228891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37214 (= res!212309 (validMask!0 mask!970))))

(assert (=> start!37214 e!228891))

(declare-datatypes ((V!13079 0))(
  ( (V!13080 (val!4535 Int)) )
))
(declare-datatypes ((ValueCell!4147 0))(
  ( (ValueCellFull!4147 (v!6728 V!13079)) (EmptyCell!4147) )
))
(declare-datatypes ((array!21863 0))(
  ( (array!21864 (arr!10397 (Array (_ BitVec 32) ValueCell!4147)) (size!10749 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21863)

(declare-fun e!228885 () Bool)

(declare-fun array_inv!7658 (array!21863) Bool)

(assert (=> start!37214 (and (array_inv!7658 _values!506) e!228885)))

(assert (=> start!37214 tp!29715))

(assert (=> start!37214 true))

(declare-fun tp_is_empty!8981 () Bool)

(assert (=> start!37214 tp_is_empty!8981))

(declare-fun array_inv!7659 (array!21861) Bool)

(assert (=> start!37214 (array_inv!7659 _keys!658)))

(declare-fun b!375743 () Bool)

(declare-fun res!212301 () Bool)

(assert (=> b!375743 (=> (not res!212301) (not e!228891))))

(declare-fun arrayContainsKey!0 (array!21861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!375743 (= res!212301 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!375744 () Bool)

(declare-fun e!228889 () Bool)

(assert (=> b!375744 (= e!228889 tp_is_empty!8981)))

(declare-fun b!375745 () Bool)

(declare-fun e!228884 () Bool)

(declare-fun e!228890 () Bool)

(assert (=> b!375745 (= e!228884 e!228890)))

(declare-fun res!212305 () Bool)

(assert (=> b!375745 (=> res!212305 e!228890)))

(assert (=> b!375745 (= res!212305 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!6010 0))(
  ( (tuple2!6011 (_1!3015 (_ BitVec 64)) (_2!3015 V!13079)) )
))
(declare-datatypes ((List!5881 0))(
  ( (Nil!5878) (Cons!5877 (h!6733 tuple2!6010) (t!11039 List!5881)) )
))
(declare-datatypes ((ListLongMap!4937 0))(
  ( (ListLongMap!4938 (toList!2484 List!5881)) )
))
(declare-fun lt!174159 () ListLongMap!4937)

(declare-fun lt!174166 () ListLongMap!4937)

(assert (=> b!375745 (= lt!174159 lt!174166)))

(declare-fun lt!174158 () ListLongMap!4937)

(declare-fun lt!174155 () tuple2!6010)

(declare-fun +!825 (ListLongMap!4937 tuple2!6010) ListLongMap!4937)

(assert (=> b!375745 (= lt!174166 (+!825 lt!174158 lt!174155))))

(declare-fun lt!174154 () ListLongMap!4937)

(declare-fun lt!174164 () ListLongMap!4937)

(assert (=> b!375745 (= lt!174154 lt!174164)))

(declare-fun lt!174160 () ListLongMap!4937)

(assert (=> b!375745 (= lt!174164 (+!825 lt!174160 lt!174155))))

(declare-fun lt!174157 () ListLongMap!4937)

(assert (=> b!375745 (= lt!174159 (+!825 lt!174157 lt!174155))))

(declare-fun zeroValue!472 () V!13079)

(assert (=> b!375745 (= lt!174155 (tuple2!6011 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375746 () Bool)

(declare-fun res!212299 () Bool)

(assert (=> b!375746 (=> (not res!212299) (not e!228891))))

(assert (=> b!375746 (= res!212299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!375747 () Bool)

(assert (=> b!375747 (= e!228890 true)))

(declare-fun lt!174162 () tuple2!6010)

(assert (=> b!375747 (= lt!174166 (+!825 lt!174164 lt!174162))))

(declare-fun v!373 () V!13079)

(declare-datatypes ((Unit!11553 0))(
  ( (Unit!11554) )
))
(declare-fun lt!174161 () Unit!11553)

(declare-fun addCommutativeForDiffKeys!251 (ListLongMap!4937 (_ BitVec 64) V!13079 (_ BitVec 64) V!13079) Unit!11553)

(assert (=> b!375747 (= lt!174161 (addCommutativeForDiffKeys!251 lt!174160 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!375748 () Bool)

(declare-fun mapRes!15036 () Bool)

(assert (=> b!375748 (= e!228885 (and e!228889 mapRes!15036))))

(declare-fun condMapEmpty!15036 () Bool)

(declare-fun mapDefault!15036 () ValueCell!4147)

