; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7438 () Bool)

(assert start!7438)

(declare-fun b!47862 () Bool)

(declare-fun e!30687 () Bool)

(declare-fun call!3740 () Bool)

(assert (=> b!47862 (= e!30687 (not call!3740))))

(declare-fun b!47863 () Bool)

(declare-fun e!30688 () Bool)

(declare-fun call!3741 () Bool)

(assert (=> b!47863 (= e!30688 (not call!3741))))

(declare-fun bm!3737 () Bool)

(declare-fun c!6443 () Bool)

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun c!6444 () Bool)

(declare-datatypes ((SeekEntryResult!222 0))(
  ( (MissingZero!222 (index!3010 (_ BitVec 32))) (Found!222 (index!3011 (_ BitVec 32))) (Intermediate!222 (undefined!1034 Bool) (index!3012 (_ BitVec 32)) (x!8802 (_ BitVec 32))) (Undefined!222) (MissingVacant!222 (index!3013 (_ BitVec 32))) )
))
(declare-fun lt!20469 () SeekEntryResult!222)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!3737 (= call!3740 (inRange!0 (ite c!6444 (index!3011 lt!20469) (ite c!6443 (index!3013 lt!20469) (index!3010 lt!20469))) mask!2458))))

(declare-fun b!47865 () Bool)

(declare-fun e!30691 () Bool)

(declare-fun e!30686 () Bool)

(assert (=> b!47865 (= e!30691 e!30686)))

(declare-fun res!27822 () Bool)

(assert (=> b!47865 (=> (not res!27822) (not e!30686))))

(assert (=> b!47865 (= res!27822 (not (is-Undefined!222 lt!20469)))))

(declare-fun k!1421 () (_ BitVec 64))

(declare-datatypes ((array!3186 0))(
  ( (array!3187 (arr!1527 (Array (_ BitVec 32) (_ BitVec 64))) (size!1749 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3186)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3186 (_ BitVec 32)) SeekEntryResult!222)

(assert (=> b!47865 (= lt!20469 (seekEntryOrOpen!0 k!1421 _keys!1940 mask!2458))))

(declare-fun b!47866 () Bool)

(assert (=> b!47866 (= e!30687 e!30688)))

(assert (=> b!47866 (= c!6443 (is-MissingVacant!222 lt!20469))))

(declare-fun mapIsEmpty!2138 () Bool)

(declare-fun mapRes!2138 () Bool)

(assert (=> mapIsEmpty!2138 mapRes!2138))

(declare-fun b!47867 () Bool)

(declare-fun res!27821 () Bool)

(assert (=> b!47867 (=> (not res!27821) (not e!30691))))

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-datatypes ((V!2483 0))(
  ( (V!2484 (val!1070 Int)) )
))
(declare-datatypes ((ValueCell!742 0))(
  ( (ValueCellFull!742 (v!2130 V!2483)) (EmptyCell!742) )
))
(declare-datatypes ((array!3188 0))(
  ( (array!3189 (arr!1528 (Array (_ BitVec 32) ValueCell!742)) (size!1750 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3188)

(assert (=> b!47867 (= res!27821 (and (= (size!1750 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1749 _keys!1940) (size!1750 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47868 () Bool)

(declare-fun res!27816 () Bool)

(assert (=> b!47868 (=> (not res!27816) (not e!30691))))

(declare-datatypes ((List!1286 0))(
  ( (Nil!1283) (Cons!1282 (h!1862 (_ BitVec 64)) (t!4322 List!1286)) )
))
(declare-fun arrayNoDuplicates!0 (array!3186 (_ BitVec 32) List!1286) Bool)

(assert (=> b!47868 (= res!27816 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1283))))

(declare-fun b!47869 () Bool)

(declare-fun res!27818 () Bool)

(declare-fun e!30689 () Bool)

(assert (=> b!47869 (=> res!27818 e!30689)))

(assert (=> b!47869 (= res!27818 (not (is-MissingZero!222 lt!20469)))))

(assert (=> b!47869 (= e!30688 e!30689)))

(declare-fun b!47870 () Bool)

(declare-fun e!30685 () Bool)

(declare-fun tp_is_empty!2063 () Bool)

(assert (=> b!47870 (= e!30685 tp_is_empty!2063)))

(declare-fun b!47871 () Bool)

(declare-fun res!27819 () Bool)

(assert (=> b!47871 (=> (not res!27819) (not e!30691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3186 (_ BitVec 32)) Bool)

(assert (=> b!47871 (= res!27819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun mapNonEmpty!2138 () Bool)

(declare-fun tp!6287 () Bool)

(declare-fun e!30690 () Bool)

(assert (=> mapNonEmpty!2138 (= mapRes!2138 (and tp!6287 e!30690))))

(declare-fun mapKey!2138 () (_ BitVec 32))

(declare-fun mapValue!2138 () ValueCell!742)

(declare-fun mapRest!2138 () (Array (_ BitVec 32) ValueCell!742))

(assert (=> mapNonEmpty!2138 (= (arr!1528 _values!1550) (store mapRest!2138 mapKey!2138 mapValue!2138))))

(declare-fun b!47864 () Bool)

(declare-fun res!27820 () Bool)

(assert (=> b!47864 (=> (not res!27820) (not e!30691))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47864 (= res!27820 (validKeyInArray!0 k!1421))))

(declare-fun res!27817 () Bool)

(assert (=> start!7438 (=> (not res!27817) (not e!30691))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7438 (= res!27817 (validMask!0 mask!2458))))

(assert (=> start!7438 e!30691))

(assert (=> start!7438 true))

(declare-fun array_inv!878 (array!3186) Bool)

(assert (=> start!7438 (array_inv!878 _keys!1940)))

(declare-fun e!30684 () Bool)

(declare-fun array_inv!879 (array!3188) Bool)

(assert (=> start!7438 (and (array_inv!879 _values!1550) e!30684)))

(declare-fun b!47872 () Bool)

(assert (=> b!47872 (= e!30689 (not call!3741))))

(declare-fun b!47873 () Bool)

(assert (=> b!47873 (= e!30690 tp_is_empty!2063)))

(declare-fun b!47874 () Bool)

(assert (=> b!47874 (= e!30686 e!30687)))

(assert (=> b!47874 (= c!6444 (is-Found!222 lt!20469))))

(declare-fun bm!3738 () Bool)

(assert (=> bm!3738 (= call!3741 call!3740)))

(declare-fun b!47875 () Bool)

(assert (=> b!47875 (= e!30684 (and e!30685 mapRes!2138))))

(declare-fun condMapEmpty!2138 () Bool)

(declare-fun mapDefault!2138 () ValueCell!742)

