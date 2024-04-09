; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35810 () Bool)

(assert start!35810)

(declare-fun b!359403 () Bool)

(declare-fun e!220178 () Bool)

(declare-fun tp_is_empty!8255 () Bool)

(assert (=> b!359403 (= e!220178 tp_is_empty!8255)))

(declare-fun mapIsEmpty!13890 () Bool)

(declare-fun mapRes!13890 () Bool)

(assert (=> mapIsEmpty!13890 mapRes!13890))

(declare-fun res!199819 () Bool)

(declare-fun e!220181 () Bool)

(assert (=> start!35810 (=> (not res!199819) (not e!220181))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35810 (= res!199819 (validMask!0 mask!1842))))

(assert (=> start!35810 e!220181))

(assert (=> start!35810 true))

(declare-datatypes ((V!11983 0))(
  ( (V!11984 (val!4172 Int)) )
))
(declare-datatypes ((ValueCell!3784 0))(
  ( (ValueCellFull!3784 (v!6362 V!11983)) (EmptyCell!3784) )
))
(declare-datatypes ((array!20031 0))(
  ( (array!20032 (arr!9506 (Array (_ BitVec 32) ValueCell!3784)) (size!9858 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!20031)

(declare-fun e!220179 () Bool)

(declare-fun array_inv!6998 (array!20031) Bool)

(assert (=> start!35810 (and (array_inv!6998 _values!1208) e!220179)))

(declare-datatypes ((array!20033 0))(
  ( (array!20034 (arr!9507 (Array (_ BitVec 32) (_ BitVec 64))) (size!9859 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!20033)

(declare-fun array_inv!6999 (array!20033) Bool)

(assert (=> start!35810 (array_inv!6999 _keys!1456)))

(declare-fun mapNonEmpty!13890 () Bool)

(declare-fun tp!27957 () Bool)

(assert (=> mapNonEmpty!13890 (= mapRes!13890 (and tp!27957 e!220178))))

(declare-fun mapValue!13890 () ValueCell!3784)

(declare-fun mapRest!13890 () (Array (_ BitVec 32) ValueCell!3784))

(declare-fun mapKey!13890 () (_ BitVec 32))

(assert (=> mapNonEmpty!13890 (= (arr!9506 _values!1208) (store mapRest!13890 mapKey!13890 mapValue!13890))))

(declare-fun b!359404 () Bool)

(declare-fun res!199817 () Bool)

(assert (=> b!359404 (=> (not res!199817) (not e!220181))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!359404 (= res!199817 (and (= (size!9858 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9859 _keys!1456) (size!9858 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!359405 () Bool)

(declare-fun res!199818 () Bool)

(assert (=> b!359405 (=> (not res!199818) (not e!220181))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!20033 (_ BitVec 32)) Bool)

(assert (=> b!359405 (= res!199818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!359406 () Bool)

(declare-fun e!220177 () Bool)

(assert (=> b!359406 (= e!220179 (and e!220177 mapRes!13890))))

(declare-fun condMapEmpty!13890 () Bool)

(declare-fun mapDefault!13890 () ValueCell!3784)

