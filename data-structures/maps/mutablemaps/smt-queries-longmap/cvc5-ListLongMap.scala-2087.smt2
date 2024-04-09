; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35698 () Bool)

(assert start!35698)

(declare-fun b!358296 () Bool)

(declare-fun e!219338 () Bool)

(assert (=> b!358296 (= e!219338 false)))

(declare-fun lt!166162 () Bool)

(declare-datatypes ((array!19815 0))(
  ( (array!19816 (arr!9398 (Array (_ BitVec 32) (_ BitVec 64))) (size!9750 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19815)

(declare-datatypes ((List!5453 0))(
  ( (Nil!5450) (Cons!5449 (h!6305 (_ BitVec 64)) (t!10611 List!5453)) )
))
(declare-fun arrayNoDuplicates!0 (array!19815 (_ BitVec 32) List!5453) Bool)

(assert (=> b!358296 (= lt!166162 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5450))))

(declare-fun b!358297 () Bool)

(declare-fun e!219337 () Bool)

(declare-fun tp_is_empty!8143 () Bool)

(assert (=> b!358297 (= e!219337 tp_is_empty!8143)))

(declare-fun mapIsEmpty!13722 () Bool)

(declare-fun mapRes!13722 () Bool)

(assert (=> mapIsEmpty!13722 mapRes!13722))

(declare-fun b!358298 () Bool)

(declare-fun res!199215 () Bool)

(assert (=> b!358298 (=> (not res!199215) (not e!219338))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19815 (_ BitVec 32)) Bool)

(assert (=> b!358298 (= res!199215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun res!199214 () Bool)

(assert (=> start!35698 (=> (not res!199214) (not e!219338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35698 (= res!199214 (validMask!0 mask!1842))))

(assert (=> start!35698 e!219338))

(assert (=> start!35698 true))

(declare-datatypes ((V!11835 0))(
  ( (V!11836 (val!4116 Int)) )
))
(declare-datatypes ((ValueCell!3728 0))(
  ( (ValueCellFull!3728 (v!6306 V!11835)) (EmptyCell!3728) )
))
(declare-datatypes ((array!19817 0))(
  ( (array!19818 (arr!9399 (Array (_ BitVec 32) ValueCell!3728)) (size!9751 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19817)

(declare-fun e!219341 () Bool)

(declare-fun array_inv!6908 (array!19817) Bool)

(assert (=> start!35698 (and (array_inv!6908 _values!1208) e!219341)))

(declare-fun array_inv!6909 (array!19815) Bool)

(assert (=> start!35698 (array_inv!6909 _keys!1456)))

(declare-fun mapNonEmpty!13722 () Bool)

(declare-fun tp!27780 () Bool)

(declare-fun e!219339 () Bool)

(assert (=> mapNonEmpty!13722 (= mapRes!13722 (and tp!27780 e!219339))))

(declare-fun mapRest!13722 () (Array (_ BitVec 32) ValueCell!3728))

(declare-fun mapKey!13722 () (_ BitVec 32))

(declare-fun mapValue!13722 () ValueCell!3728)

(assert (=> mapNonEmpty!13722 (= (arr!9399 _values!1208) (store mapRest!13722 mapKey!13722 mapValue!13722))))

(declare-fun b!358299 () Bool)

(assert (=> b!358299 (= e!219339 tp_is_empty!8143)))

(declare-fun b!358300 () Bool)

(assert (=> b!358300 (= e!219341 (and e!219337 mapRes!13722))))

(declare-fun condMapEmpty!13722 () Bool)

(declare-fun mapDefault!13722 () ValueCell!3728)

