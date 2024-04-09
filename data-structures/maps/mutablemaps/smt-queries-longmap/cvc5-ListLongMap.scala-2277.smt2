; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37132 () Bool)

(assert start!37132)

(declare-fun b_free!8251 () Bool)

(declare-fun b_next!8251 () Bool)

(assert (=> start!37132 (= b_free!8251 (not b_next!8251))))

(declare-fun tp!29468 () Bool)

(declare-fun b_and!15511 () Bool)

(assert (=> start!37132 (= tp!29468 b_and!15511)))

(declare-fun b!373887 () Bool)

(declare-fun e!227907 () Bool)

(declare-fun tp_is_empty!8899 () Bool)

(assert (=> b!373887 (= e!227907 tp_is_empty!8899)))

(declare-fun res!210818 () Bool)

(declare-fun e!227902 () Bool)

(assert (=> start!37132 (=> (not res!210818) (not e!227902))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37132 (= res!210818 (validMask!0 mask!970))))

(assert (=> start!37132 e!227902))

(declare-datatypes ((V!12971 0))(
  ( (V!12972 (val!4494 Int)) )
))
(declare-datatypes ((ValueCell!4106 0))(
  ( (ValueCellFull!4106 (v!6687 V!12971)) (EmptyCell!4106) )
))
(declare-datatypes ((array!21703 0))(
  ( (array!21704 (arr!10317 (Array (_ BitVec 32) ValueCell!4106)) (size!10669 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21703)

(declare-fun e!227906 () Bool)

(declare-fun array_inv!7612 (array!21703) Bool)

(assert (=> start!37132 (and (array_inv!7612 _values!506) e!227906)))

(assert (=> start!37132 tp!29468))

(assert (=> start!37132 true))

(assert (=> start!37132 tp_is_empty!8899))

(declare-datatypes ((array!21705 0))(
  ( (array!21706 (arr!10318 (Array (_ BitVec 32) (_ BitVec 64))) (size!10670 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21705)

(declare-fun array_inv!7613 (array!21705) Bool)

(assert (=> start!37132 (array_inv!7613 _keys!658)))

(declare-fun mapIsEmpty!14913 () Bool)

(declare-fun mapRes!14913 () Bool)

(assert (=> mapIsEmpty!14913 mapRes!14913))

(declare-fun b!373888 () Bool)

(declare-fun res!210822 () Bool)

(assert (=> b!373888 (=> (not res!210822) (not e!227902))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!373888 (= res!210822 (and (= (size!10669 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10670 _keys!658) (size!10669 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!373889 () Bool)

(declare-fun e!227904 () Bool)

(assert (=> b!373889 (= e!227902 e!227904)))

(declare-fun res!210821 () Bool)

(assert (=> b!373889 (=> (not res!210821) (not e!227904))))

(declare-fun lt!172167 () array!21705)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21705 (_ BitVec 32)) Bool)

(assert (=> b!373889 (= res!210821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!172167 mask!970))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!373889 (= lt!172167 (array!21706 (store (arr!10318 _keys!658) i!548 k!778) (size!10670 _keys!658)))))

(declare-fun b!373890 () Bool)

(declare-fun res!210816 () Bool)

(assert (=> b!373890 (=> (not res!210816) (not e!227902))))

(assert (=> b!373890 (= res!210816 (or (= (select (arr!10318 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10318 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!373891 () Bool)

(declare-fun res!210823 () Bool)

(assert (=> b!373891 (=> (not res!210823) (not e!227902))))

(assert (=> b!373891 (= res!210823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!373892 () Bool)

(declare-fun res!210814 () Bool)

(assert (=> b!373892 (=> (not res!210814) (not e!227902))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!373892 (= res!210814 (validKeyInArray!0 k!778))))

(declare-fun b!373893 () Bool)

(declare-fun e!227905 () Bool)

(assert (=> b!373893 (= e!227904 (not e!227905))))

(declare-fun res!210820 () Bool)

(assert (=> b!373893 (=> res!210820 e!227905)))

(assert (=> b!373893 (= res!210820 (or (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!5950 0))(
  ( (tuple2!5951 (_1!2985 (_ BitVec 64)) (_2!2985 V!12971)) )
))
(declare-datatypes ((List!5821 0))(
  ( (Nil!5818) (Cons!5817 (h!6673 tuple2!5950) (t!10979 List!5821)) )
))
(declare-datatypes ((ListLongMap!4877 0))(
  ( (ListLongMap!4878 (toList!2454 List!5821)) )
))
(declare-fun lt!172173 () ListLongMap!4877)

(declare-fun zeroValue!472 () V!12971)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!12971)

(declare-fun getCurrentListMap!1900 (array!21705 array!21703 (_ BitVec 32) (_ BitVec 32) V!12971 V!12971 (_ BitVec 32) Int) ListLongMap!4877)

(assert (=> b!373893 (= lt!172173 (getCurrentListMap!1900 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172171 () array!21703)

(declare-fun lt!172183 () ListLongMap!4877)

(assert (=> b!373893 (= lt!172183 (getCurrentListMap!1900 lt!172167 lt!172171 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!172178 () ListLongMap!4877)

(declare-fun lt!172181 () ListLongMap!4877)

(assert (=> b!373893 (and (= lt!172178 lt!172181) (= lt!172181 lt!172178))))

(declare-fun lt!172176 () ListLongMap!4877)

(declare-fun lt!172168 () tuple2!5950)

(declare-fun +!795 (ListLongMap!4877 tuple2!5950) ListLongMap!4877)

(assert (=> b!373893 (= lt!172181 (+!795 lt!172176 lt!172168))))

(declare-fun v!373 () V!12971)

(assert (=> b!373893 (= lt!172168 (tuple2!5951 k!778 v!373))))

(declare-datatypes ((Unit!11493 0))(
  ( (Unit!11494) )
))
(declare-fun lt!172169 () Unit!11493)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!51 (array!21705 array!21703 (_ BitVec 32) (_ BitVec 32) V!12971 V!12971 (_ BitVec 32) (_ BitVec 64) V!12971 (_ BitVec 32) Int) Unit!11493)

(assert (=> b!373893 (= lt!172169 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!51 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!718 (array!21705 array!21703 (_ BitVec 32) (_ BitVec 32) V!12971 V!12971 (_ BitVec 32) Int) ListLongMap!4877)

(assert (=> b!373893 (= lt!172178 (getCurrentListMapNoExtraKeys!718 lt!172167 lt!172171 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!373893 (= lt!172171 (array!21704 (store (arr!10317 _values!506) i!548 (ValueCellFull!4106 v!373)) (size!10669 _values!506)))))

(assert (=> b!373893 (= lt!172176 (getCurrentListMapNoExtraKeys!718 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!373894 () Bool)

(declare-fun res!210817 () Bool)

(assert (=> b!373894 (=> (not res!210817) (not e!227902))))

(declare-fun arrayContainsKey!0 (array!21705 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!373894 (= res!210817 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!373895 () Bool)

(declare-fun e!227901 () Bool)

(assert (=> b!373895 (= e!227901 true)))

(declare-fun lt!172182 () ListLongMap!4877)

(declare-fun lt!172179 () ListLongMap!4877)

(declare-fun lt!172180 () tuple2!5950)

(assert (=> b!373895 (= (+!795 lt!172182 lt!172180) (+!795 lt!172179 lt!172168))))

(declare-fun lt!172175 () Unit!11493)

(declare-fun lt!172174 () ListLongMap!4877)

(declare-fun addCommutativeForDiffKeys!224 (ListLongMap!4877 (_ BitVec 64) V!12971 (_ BitVec 64) V!12971) Unit!11493)

(assert (=> b!373895 (= lt!172175 (addCommutativeForDiffKeys!224 lt!172174 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!373896 () Bool)

(assert (=> b!373896 (= e!227905 e!227901)))

(declare-fun res!210824 () Bool)

(assert (=> b!373896 (=> res!210824 e!227901)))

(assert (=> b!373896 (= res!210824 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!172172 () ListLongMap!4877)

(assert (=> b!373896 (= lt!172172 lt!172182)))

(assert (=> b!373896 (= lt!172182 (+!795 lt!172174 lt!172168))))

(declare-fun lt!172177 () Unit!11493)

(assert (=> b!373896 (= lt!172177 (addCommutativeForDiffKeys!224 lt!172176 k!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(assert (=> b!373896 (= lt!172183 (+!795 lt!172172 lt!172180))))

(declare-fun lt!172170 () tuple2!5950)

(assert (=> b!373896 (= lt!172172 (+!795 lt!172181 lt!172170))))

(assert (=> b!373896 (= lt!172173 lt!172179)))

(assert (=> b!373896 (= lt!172179 (+!795 lt!172174 lt!172180))))

(assert (=> b!373896 (= lt!172174 (+!795 lt!172176 lt!172170))))

(assert (=> b!373896 (= lt!172183 (+!795 (+!795 lt!172178 lt!172170) lt!172180))))

(assert (=> b!373896 (= lt!172180 (tuple2!5951 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (=> b!373896 (= lt!172170 (tuple2!5951 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!373897 () Bool)

(assert (=> b!373897 (= e!227906 (and e!227907 mapRes!14913))))

(declare-fun condMapEmpty!14913 () Bool)

(declare-fun mapDefault!14913 () ValueCell!4106)

