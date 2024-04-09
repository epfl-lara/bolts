; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!38150 () Bool)

(assert start!38150)

(declare-fun b_free!9023 () Bool)

(declare-fun b_next!9023 () Bool)

(assert (=> start!38150 (= b_free!9023 (not b_next!9023))))

(declare-fun tp!31850 () Bool)

(declare-fun b_and!16403 () Bool)

(assert (=> start!38150 (= tp!31850 b_and!16403)))

(declare-fun b!392834 () Bool)

(declare-fun e!237885 () Bool)

(assert (=> b!392834 (= e!237885 true)))

(declare-datatypes ((V!14031 0))(
  ( (V!14032 (val!4892 Int)) )
))
(declare-datatypes ((tuple2!6532 0))(
  ( (tuple2!6533 (_1!3276 (_ BitVec 64)) (_2!3276 V!14031)) )
))
(declare-datatypes ((List!6414 0))(
  ( (Nil!6411) (Cons!6410 (h!7266 tuple2!6532) (t!11592 List!6414)) )
))
(declare-datatypes ((ListLongMap!5459 0))(
  ( (ListLongMap!5460 (toList!2745 List!6414)) )
))
(declare-fun lt!185834 () ListLongMap!5459)

(declare-fun lt!185833 () ListLongMap!5459)

(declare-fun lt!185843 () tuple2!6532)

(declare-fun +!1043 (ListLongMap!5459 tuple2!6532) ListLongMap!5459)

(assert (=> b!392834 (= lt!185834 (+!1043 lt!185833 lt!185843))))

(declare-datatypes ((Unit!11981 0))(
  ( (Unit!11982) )
))
(declare-fun lt!185842 () Unit!11981)

(declare-fun lt!185840 () ListLongMap!5459)

(declare-fun k!778 () (_ BitVec 64))

(declare-fun minValue!472 () V!14031)

(declare-fun v!373 () V!14031)

(declare-fun addCommutativeForDiffKeys!340 (ListLongMap!5459 (_ BitVec 64) V!14031 (_ BitVec 64) V!14031) Unit!11981)

(assert (=> b!392834 (= lt!185842 (addCommutativeForDiffKeys!340 lt!185840 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!392835 () Bool)

(declare-fun res!225068 () Bool)

(declare-fun e!237887 () Bool)

(assert (=> b!392835 (=> (not res!225068) (not e!237887))))

(declare-datatypes ((array!23271 0))(
  ( (array!23272 (arr!11091 (Array (_ BitVec 32) (_ BitVec 64))) (size!11443 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23271)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!392835 (= res!225068 (or (= (select (arr!11091 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11091 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!392836 () Bool)

(declare-fun res!225059 () Bool)

(assert (=> b!392836 (=> (not res!225059) (not e!237887))))

(assert (=> b!392836 (= res!225059 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11443 _keys!658))))))

(declare-fun b!392837 () Bool)

(declare-fun res!225063 () Bool)

(assert (=> b!392837 (=> (not res!225063) (not e!237887))))

(declare-fun arrayContainsKey!0 (array!23271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!392837 (= res!225063 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun res!225060 () Bool)

(assert (=> start!38150 (=> (not res!225060) (not e!237887))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38150 (= res!225060 (validMask!0 mask!970))))

(assert (=> start!38150 e!237887))

(declare-datatypes ((ValueCell!4504 0))(
  ( (ValueCellFull!4504 (v!7125 V!14031)) (EmptyCell!4504) )
))
(declare-datatypes ((array!23273 0))(
  ( (array!23274 (arr!11092 (Array (_ BitVec 32) ValueCell!4504)) (size!11444 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23273)

(declare-fun e!237890 () Bool)

(declare-fun array_inv!8130 (array!23273) Bool)

(assert (=> start!38150 (and (array_inv!8130 _values!506) e!237890)))

(assert (=> start!38150 tp!31850))

(assert (=> start!38150 true))

(declare-fun tp_is_empty!9695 () Bool)

(assert (=> start!38150 tp_is_empty!9695))

(declare-fun array_inv!8131 (array!23271) Bool)

(assert (=> start!38150 (array_inv!8131 _keys!658)))

(declare-fun mapNonEmpty!16137 () Bool)

(declare-fun mapRes!16137 () Bool)

(declare-fun tp!31851 () Bool)

(declare-fun e!237886 () Bool)

(assert (=> mapNonEmpty!16137 (= mapRes!16137 (and tp!31851 e!237886))))

(declare-fun mapRest!16137 () (Array (_ BitVec 32) ValueCell!4504))

(declare-fun mapKey!16137 () (_ BitVec 32))

(declare-fun mapValue!16137 () ValueCell!4504)

(assert (=> mapNonEmpty!16137 (= (arr!11092 _values!506) (store mapRest!16137 mapKey!16137 mapValue!16137))))

(declare-fun b!392838 () Bool)

(declare-fun res!225069 () Bool)

(assert (=> b!392838 (=> (not res!225069) (not e!237887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23271 (_ BitVec 32)) Bool)

(assert (=> b!392838 (= res!225069 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!392839 () Bool)

(assert (=> b!392839 (= e!237886 tp_is_empty!9695)))

(declare-fun b!392840 () Bool)

(declare-fun res!225065 () Bool)

(assert (=> b!392840 (=> (not res!225065) (not e!237887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!392840 (= res!225065 (validKeyInArray!0 k!778))))

(declare-fun b!392841 () Bool)

(declare-fun res!225066 () Bool)

(assert (=> b!392841 (=> (not res!225066) (not e!237887))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!392841 (= res!225066 (and (= (size!11444 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11443 _keys!658) (size!11444 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!392842 () Bool)

(declare-fun res!225061 () Bool)

(declare-fun e!237884 () Bool)

(assert (=> b!392842 (=> (not res!225061) (not e!237884))))

(declare-fun lt!185838 () array!23271)

(declare-datatypes ((List!6415 0))(
  ( (Nil!6412) (Cons!6411 (h!7267 (_ BitVec 64)) (t!11593 List!6415)) )
))
(declare-fun arrayNoDuplicates!0 (array!23271 (_ BitVec 32) List!6415) Bool)

(assert (=> b!392842 (= res!225061 (arrayNoDuplicates!0 lt!185838 #b00000000000000000000000000000000 Nil!6412))))

(declare-fun b!392843 () Bool)

(declare-fun e!237889 () Bool)

(assert (=> b!392843 (= e!237890 (and e!237889 mapRes!16137))))

(declare-fun condMapEmpty!16137 () Bool)

(declare-fun mapDefault!16137 () ValueCell!4504)

