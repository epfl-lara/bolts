; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37372 () Bool)

(assert start!37372)

(declare-fun b_free!8491 () Bool)

(declare-fun b_next!8491 () Bool)

(assert (=> start!37372 (= b_free!8491 (not b_next!8491))))

(declare-fun tp!30189 () Bool)

(declare-fun b_and!15751 () Bool)

(assert (=> start!37372 (= tp!30189 b_and!15751)))

(declare-fun b!379305 () Bool)

(declare-fun e!230787 () Bool)

(declare-fun e!230782 () Bool)

(assert (=> b!379305 (= e!230787 e!230782)))

(declare-fun res!215157 () Bool)

(assert (=> b!379305 (=> res!215157 e!230782)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!379305 (= res!215157 (= k!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13291 0))(
  ( (V!13292 (val!4614 Int)) )
))
(declare-datatypes ((tuple2!6140 0))(
  ( (tuple2!6141 (_1!3080 (_ BitVec 64)) (_2!3080 V!13291)) )
))
(declare-datatypes ((List!6013 0))(
  ( (Nil!6010) (Cons!6009 (h!6865 tuple2!6140) (t!11171 List!6013)) )
))
(declare-datatypes ((ListLongMap!5067 0))(
  ( (ListLongMap!5068 (toList!2549 List!6013)) )
))
(declare-fun lt!177207 () ListLongMap!5067)

(declare-fun lt!177205 () ListLongMap!5067)

(assert (=> b!379305 (= lt!177207 lt!177205)))

(declare-fun lt!177208 () ListLongMap!5067)

(declare-fun lt!177209 () tuple2!6140)

(declare-fun +!890 (ListLongMap!5067 tuple2!6140) ListLongMap!5067)

(assert (=> b!379305 (= lt!177205 (+!890 lt!177208 lt!177209))))

(declare-fun lt!177211 () ListLongMap!5067)

(declare-fun lt!177203 () ListLongMap!5067)

(assert (=> b!379305 (= lt!177211 lt!177203)))

(declare-fun lt!177202 () ListLongMap!5067)

(assert (=> b!379305 (= lt!177203 (+!890 lt!177202 lt!177209))))

(declare-fun lt!177199 () ListLongMap!5067)

(assert (=> b!379305 (= lt!177211 (+!890 lt!177199 lt!177209))))

(declare-fun minValue!472 () V!13291)

(assert (=> b!379305 (= lt!177209 (tuple2!6141 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!15273 () Bool)

(declare-fun mapRes!15273 () Bool)

(assert (=> mapIsEmpty!15273 mapRes!15273))

(declare-fun b!379306 () Bool)

(declare-fun res!215162 () Bool)

(declare-fun e!230783 () Bool)

(assert (=> b!379306 (=> (not res!215162) (not e!230783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379306 (= res!215162 (validKeyInArray!0 k!778))))

(declare-fun b!379307 () Bool)

(declare-fun res!215159 () Bool)

(assert (=> b!379307 (=> (not res!215159) (not e!230783))))

(declare-datatypes ((array!22175 0))(
  ( (array!22176 (arr!10553 (Array (_ BitVec 32) (_ BitVec 64))) (size!10905 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22175)

(declare-fun arrayContainsKey!0 (array!22175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379307 (= res!215159 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379308 () Bool)

(declare-fun res!215156 () Bool)

(assert (=> b!379308 (=> (not res!215156) (not e!230783))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((ValueCell!4226 0))(
  ( (ValueCellFull!4226 (v!6807 V!13291)) (EmptyCell!4226) )
))
(declare-datatypes ((array!22177 0))(
  ( (array!22178 (arr!10554 (Array (_ BitVec 32) ValueCell!4226)) (size!10906 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22177)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!379308 (= res!215156 (and (= (size!10906 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10905 _keys!658) (size!10906 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379310 () Bool)

(declare-fun res!215160 () Bool)

(assert (=> b!379310 (=> (not res!215160) (not e!230783))))

(declare-datatypes ((List!6014 0))(
  ( (Nil!6011) (Cons!6010 (h!6866 (_ BitVec 64)) (t!11172 List!6014)) )
))
(declare-fun arrayNoDuplicates!0 (array!22175 (_ BitVec 32) List!6014) Bool)

(assert (=> b!379310 (= res!215160 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6011))))

(declare-fun b!379311 () Bool)

(declare-fun res!215152 () Bool)

(assert (=> b!379311 (=> (not res!215152) (not e!230783))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379311 (= res!215152 (or (= (select (arr!10553 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10553 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!15273 () Bool)

(declare-fun tp!30188 () Bool)

(declare-fun e!230780 () Bool)

(assert (=> mapNonEmpty!15273 (= mapRes!15273 (and tp!30188 e!230780))))

(declare-fun mapKey!15273 () (_ BitVec 32))

(declare-fun mapValue!15273 () ValueCell!4226)

(declare-fun mapRest!15273 () (Array (_ BitVec 32) ValueCell!4226))

(assert (=> mapNonEmpty!15273 (= (arr!10554 _values!506) (store mapRest!15273 mapKey!15273 mapValue!15273))))

(declare-fun b!379312 () Bool)

(assert (=> b!379312 (= e!230782 (bvsle #b00000000000000000000000000000000 (size!10905 _keys!658)))))

(declare-fun lt!177210 () tuple2!6140)

(assert (=> b!379312 (= lt!177203 (+!890 lt!177205 lt!177210))))

(declare-datatypes ((Unit!11675 0))(
  ( (Unit!11676) )
))
(declare-fun lt!177200 () Unit!11675)

(declare-fun v!373 () V!13291)

(declare-fun addCommutativeForDiffKeys!302 (ListLongMap!5067 (_ BitVec 64) V!13291 (_ BitVec 64) V!13291) Unit!11675)

(assert (=> b!379312 (= lt!177200 (addCommutativeForDiffKeys!302 lt!177208 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379313 () Bool)

(declare-fun res!215153 () Bool)

(assert (=> b!379313 (=> (not res!215153) (not e!230783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22175 (_ BitVec 32)) Bool)

(assert (=> b!379313 (= res!215153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379314 () Bool)

(declare-fun e!230784 () Bool)

(assert (=> b!379314 (= e!230783 e!230784)))

(declare-fun res!215158 () Bool)

(assert (=> b!379314 (=> (not res!215158) (not e!230784))))

(declare-fun lt!177206 () array!22175)

(assert (=> b!379314 (= res!215158 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177206 mask!970))))

(assert (=> b!379314 (= lt!177206 (array!22176 (store (arr!10553 _keys!658) i!548 k!778) (size!10905 _keys!658)))))

(declare-fun b!379315 () Bool)

(assert (=> b!379315 (= e!230784 (not e!230787))))

(declare-fun res!215154 () Bool)

(assert (=> b!379315 (=> res!215154 e!230787)))

(assert (=> b!379315 (= res!215154 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13291)

(declare-fun getCurrentListMap!1977 (array!22175 array!22177 (_ BitVec 32) (_ BitVec 32) V!13291 V!13291 (_ BitVec 32) Int) ListLongMap!5067)

(assert (=> b!379315 (= lt!177207 (getCurrentListMap!1977 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177204 () array!22177)

(assert (=> b!379315 (= lt!177211 (getCurrentListMap!1977 lt!177206 lt!177204 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379315 (and (= lt!177199 lt!177202) (= lt!177202 lt!177199))))

(assert (=> b!379315 (= lt!177202 (+!890 lt!177208 lt!177210))))

(assert (=> b!379315 (= lt!177210 (tuple2!6141 k!778 v!373))))

(declare-fun lt!177201 () Unit!11675)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!128 (array!22175 array!22177 (_ BitVec 32) (_ BitVec 32) V!13291 V!13291 (_ BitVec 32) (_ BitVec 64) V!13291 (_ BitVec 32) Int) Unit!11675)

(assert (=> b!379315 (= lt!177201 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!128 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!795 (array!22175 array!22177 (_ BitVec 32) (_ BitVec 32) V!13291 V!13291 (_ BitVec 32) Int) ListLongMap!5067)

(assert (=> b!379315 (= lt!177199 (getCurrentListMapNoExtraKeys!795 lt!177206 lt!177204 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379315 (= lt!177204 (array!22178 (store (arr!10554 _values!506) i!548 (ValueCellFull!4226 v!373)) (size!10906 _values!506)))))

(assert (=> b!379315 (= lt!177208 (getCurrentListMapNoExtraKeys!795 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379316 () Bool)

(declare-fun tp_is_empty!9139 () Bool)

(assert (=> b!379316 (= e!230780 tp_is_empty!9139)))

(declare-fun b!379317 () Bool)

(declare-fun res!215161 () Bool)

(assert (=> b!379317 (=> (not res!215161) (not e!230783))))

(assert (=> b!379317 (= res!215161 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10905 _keys!658))))))

(declare-fun b!379318 () Bool)

(declare-fun res!215151 () Bool)

(assert (=> b!379318 (=> (not res!215151) (not e!230784))))

(assert (=> b!379318 (= res!215151 (arrayNoDuplicates!0 lt!177206 #b00000000000000000000000000000000 Nil!6011))))

(declare-fun b!379319 () Bool)

(declare-fun e!230781 () Bool)

(assert (=> b!379319 (= e!230781 tp_is_empty!9139)))

(declare-fun res!215155 () Bool)

(assert (=> start!37372 (=> (not res!215155) (not e!230783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37372 (= res!215155 (validMask!0 mask!970))))

(assert (=> start!37372 e!230783))

(declare-fun e!230785 () Bool)

(declare-fun array_inv!7764 (array!22177) Bool)

(assert (=> start!37372 (and (array_inv!7764 _values!506) e!230785)))

(assert (=> start!37372 tp!30189))

(assert (=> start!37372 true))

(assert (=> start!37372 tp_is_empty!9139))

(declare-fun array_inv!7765 (array!22175) Bool)

(assert (=> start!37372 (array_inv!7765 _keys!658)))

(declare-fun b!379309 () Bool)

(assert (=> b!379309 (= e!230785 (and e!230781 mapRes!15273))))

(declare-fun condMapEmpty!15273 () Bool)

(declare-fun mapDefault!15273 () ValueCell!4226)

