; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!40412 () Bool)

(assert start!40412)

(declare-fun b!444029 () Bool)

(declare-fun e!261168 () Bool)

(declare-fun e!261169 () Bool)

(assert (=> b!444029 (= e!261168 e!261169)))

(declare-fun res!263328 () Bool)

(assert (=> b!444029 (=> (not res!263328) (not e!261169))))

(declare-datatypes ((array!27351 0))(
  ( (array!27352 (arr!13120 (Array (_ BitVec 32) (_ BitVec 64))) (size!13472 (_ BitVec 32))) )
))
(declare-fun lt!203421 () array!27351)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!27351 (_ BitVec 32)) Bool)

(assert (=> b!444029 (= res!263328 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!203421 mask!1025))))

(declare-fun _keys!709 () array!27351)

(declare-fun i!563 () (_ BitVec 32))

(declare-fun k!794 () (_ BitVec 64))

(assert (=> b!444029 (= lt!203421 (array!27352 (store (arr!13120 _keys!709) i!563 k!794) (size!13472 _keys!709)))))

(declare-fun mapIsEmpty!19311 () Bool)

(declare-fun mapRes!19311 () Bool)

(assert (=> mapIsEmpty!19311 mapRes!19311))

(declare-fun b!444030 () Bool)

(declare-fun res!263327 () Bool)

(assert (=> b!444030 (=> (not res!263327) (not e!261168))))

(assert (=> b!444030 (= res!263327 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13472 _keys!709))))))

(declare-fun b!444031 () Bool)

(declare-fun res!263326 () Bool)

(assert (=> b!444031 (=> (not res!263326) (not e!261168))))

(assert (=> b!444031 (= res!263326 (or (= (select (arr!13120 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13120 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!444032 () Bool)

(declare-fun res!263334 () Bool)

(assert (=> b!444032 (=> (not res!263334) (not e!261168))))

(declare-fun arrayContainsKey!0 (array!27351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!444032 (= res!263334 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!444033 () Bool)

(declare-fun res!263335 () Bool)

(assert (=> b!444033 (=> (not res!263335) (not e!261168))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-datatypes ((V!16823 0))(
  ( (V!16824 (val!5939 Int)) )
))
(declare-datatypes ((ValueCell!5551 0))(
  ( (ValueCellFull!5551 (v!8186 V!16823)) (EmptyCell!5551) )
))
(declare-datatypes ((array!27353 0))(
  ( (array!27354 (arr!13121 (Array (_ BitVec 32) ValueCell!5551)) (size!13473 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!27353)

(assert (=> b!444033 (= res!263335 (and (= (size!13473 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!13472 _keys!709) (size!13473 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!444034 () Bool)

(declare-fun e!261167 () Bool)

(declare-fun tp_is_empty!11789 () Bool)

(assert (=> b!444034 (= e!261167 tp_is_empty!11789)))

(declare-fun mapNonEmpty!19311 () Bool)

(declare-fun tp!37293 () Bool)

(assert (=> mapNonEmpty!19311 (= mapRes!19311 (and tp!37293 e!261167))))

(declare-fun mapValue!19311 () ValueCell!5551)

(declare-fun mapKey!19311 () (_ BitVec 32))

(declare-fun mapRest!19311 () (Array (_ BitVec 32) ValueCell!5551))

(assert (=> mapNonEmpty!19311 (= (arr!13121 _values!549) (store mapRest!19311 mapKey!19311 mapValue!19311))))

(declare-fun b!444035 () Bool)

(declare-fun res!263332 () Bool)

(assert (=> b!444035 (=> (not res!263332) (not e!261168))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!444035 (= res!263332 (validMask!0 mask!1025))))

(declare-fun b!444036 () Bool)

(assert (=> b!444036 (= e!261169 false)))

(declare-fun lt!203420 () Bool)

(declare-datatypes ((List!7836 0))(
  ( (Nil!7833) (Cons!7832 (h!8688 (_ BitVec 64)) (t!13602 List!7836)) )
))
(declare-fun arrayNoDuplicates!0 (array!27351 (_ BitVec 32) List!7836) Bool)

(assert (=> b!444036 (= lt!203420 (arrayNoDuplicates!0 lt!203421 #b00000000000000000000000000000000 Nil!7833))))

(declare-fun b!444037 () Bool)

(declare-fun res!263329 () Bool)

(assert (=> b!444037 (=> (not res!263329) (not e!261168))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!444037 (= res!263329 (validKeyInArray!0 k!794))))

(declare-fun res!263331 () Bool)

(assert (=> start!40412 (=> (not res!263331) (not e!261168))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!40412 (= res!263331 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13472 _keys!709))))))

(assert (=> start!40412 e!261168))

(assert (=> start!40412 true))

(declare-fun e!261170 () Bool)

(declare-fun array_inv!9506 (array!27353) Bool)

(assert (=> start!40412 (and (array_inv!9506 _values!549) e!261170)))

(declare-fun array_inv!9507 (array!27351) Bool)

(assert (=> start!40412 (array_inv!9507 _keys!709)))

(declare-fun b!444038 () Bool)

(declare-fun e!261166 () Bool)

(assert (=> b!444038 (= e!261166 tp_is_empty!11789)))

(declare-fun b!444039 () Bool)

(declare-fun res!263333 () Bool)

(assert (=> b!444039 (=> (not res!263333) (not e!261168))))

(assert (=> b!444039 (= res!263333 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7833))))

(declare-fun b!444040 () Bool)

(assert (=> b!444040 (= e!261170 (and e!261166 mapRes!19311))))

(declare-fun condMapEmpty!19311 () Bool)

(declare-fun mapDefault!19311 () ValueCell!5551)

