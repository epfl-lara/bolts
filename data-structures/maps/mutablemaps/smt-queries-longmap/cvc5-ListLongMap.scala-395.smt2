; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7422 () Bool)

(assert start!7422)

(declare-fun res!27698 () Bool)

(declare-fun e!30533 () Bool)

(assert (=> start!7422 (=> (not res!27698) (not e!30533))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7422 (= res!27698 (validMask!0 mask!2458))))

(assert (=> start!7422 e!30533))

(assert (=> start!7422 true))

(declare-datatypes ((array!3156 0))(
  ( (array!3157 (arr!1512 (Array (_ BitVec 32) (_ BitVec 64))) (size!1734 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3156)

(declare-fun array_inv!866 (array!3156) Bool)

(assert (=> start!7422 (array_inv!866 _keys!1940)))

(declare-datatypes ((V!2463 0))(
  ( (V!2464 (val!1062 Int)) )
))
(declare-datatypes ((ValueCell!734 0))(
  ( (ValueCellFull!734 (v!2122 V!2463)) (EmptyCell!734) )
))
(declare-datatypes ((array!3158 0))(
  ( (array!3159 (arr!1513 (Array (_ BitVec 32) ValueCell!734)) (size!1735 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3158)

(declare-fun e!30535 () Bool)

(declare-fun array_inv!867 (array!3158) Bool)

(assert (=> start!7422 (and (array_inv!867 _values!1550) e!30535)))

(declare-fun mapNonEmpty!2114 () Bool)

(declare-fun mapRes!2114 () Bool)

(declare-fun tp!6263 () Bool)

(declare-fun e!30531 () Bool)

(assert (=> mapNonEmpty!2114 (= mapRes!2114 (and tp!6263 e!30531))))

(declare-fun mapKey!2114 () (_ BitVec 32))

(declare-fun mapValue!2114 () ValueCell!734)

(declare-fun mapRest!2114 () (Array (_ BitVec 32) ValueCell!734))

(assert (=> mapNonEmpty!2114 (= (arr!1513 _values!1550) (store mapRest!2114 mapKey!2114 mapValue!2114))))

(declare-fun b!47640 () Bool)

(declare-fun res!27702 () Bool)

(assert (=> b!47640 (=> (not res!27702) (not e!30533))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(assert (=> b!47640 (= res!27702 (and (= (size!1735 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1734 _keys!1940) (size!1735 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47641 () Bool)

(declare-fun res!27701 () Bool)

(assert (=> b!47641 (=> (not res!27701) (not e!30533))))

(declare-fun k!1421 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47641 (= res!27701 (validKeyInArray!0 k!1421))))

(declare-fun b!47642 () Bool)

(declare-fun res!27699 () Bool)

(assert (=> b!47642 (=> (not res!27699) (not e!30533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3156 (_ BitVec 32)) Bool)

(assert (=> b!47642 (= res!27699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47643 () Bool)

(declare-fun e!30532 () Bool)

(declare-fun tp_is_empty!2047 () Bool)

(assert (=> b!47643 (= e!30532 tp_is_empty!2047)))

(declare-fun b!47644 () Bool)

(assert (=> b!47644 (= e!30535 (and e!30532 mapRes!2114))))

(declare-fun condMapEmpty!2114 () Bool)

(declare-fun mapDefault!2114 () ValueCell!734)

