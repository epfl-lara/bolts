; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7434 () Bool)

(assert start!7434)

(declare-fun b!47778 () Bool)

(declare-fun res!27776 () Bool)

(declare-fun e!30637 () Bool)

(assert (=> b!47778 (=> (not res!27776) (not e!30637))))

(declare-datatypes ((array!3178 0))(
  ( (array!3179 (arr!1523 (Array (_ BitVec 32) (_ BitVec 64))) (size!1745 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3178)

(declare-datatypes ((List!1284 0))(
  ( (Nil!1281) (Cons!1280 (h!1860 (_ BitVec 64)) (t!4320 List!1284)) )
))
(declare-fun arrayNoDuplicates!0 (array!3178 (_ BitVec 32) List!1284) Bool)

(assert (=> b!47778 (= res!27776 (arrayNoDuplicates!0 _keys!1940 #b00000000000000000000000000000000 Nil!1281))))

(declare-fun b!47779 () Bool)

(declare-fun e!30630 () Bool)

(declare-fun call!3729 () Bool)

(assert (=> b!47779 (= e!30630 (not call!3729))))

(declare-fun b!47780 () Bool)

(declare-fun e!30633 () Bool)

(declare-fun tp_is_empty!2059 () Bool)

(assert (=> b!47780 (= e!30633 tp_is_empty!2059)))

(declare-fun b!47781 () Bool)

(declare-fun res!27778 () Bool)

(assert (=> b!47781 (=> (not res!27778) (not e!30637))))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3178 (_ BitVec 32)) Bool)

(assert (=> b!47781 (= res!27778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun b!47782 () Bool)

(declare-fun e!30636 () Bool)

(declare-fun e!30635 () Bool)

(assert (=> b!47782 (= e!30636 e!30635)))

(declare-fun c!6431 () Bool)

(declare-datatypes ((SeekEntryResult!220 0))(
  ( (MissingZero!220 (index!3002 (_ BitVec 32))) (Found!220 (index!3003 (_ BitVec 32))) (Intermediate!220 (undefined!1032 Bool) (index!3004 (_ BitVec 32)) (x!8800 (_ BitVec 32))) (Undefined!220) (MissingVacant!220 (index!3005 (_ BitVec 32))) )
))
(declare-fun lt!20463 () SeekEntryResult!220)

(assert (=> b!47782 (= c!6431 (is-MissingVacant!220 lt!20463))))

(declare-fun b!47783 () Bool)

(declare-fun e!30632 () Bool)

(assert (=> b!47783 (= e!30632 tp_is_empty!2059)))

(declare-fun b!47784 () Bool)

(declare-fun res!27780 () Bool)

(assert (=> b!47784 (=> (not res!27780) (not e!30637))))

(declare-fun k!1421 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47784 (= res!27780 (validKeyInArray!0 k!1421))))

(declare-fun b!47785 () Bool)

(declare-fun res!27774 () Bool)

(assert (=> b!47785 (=> res!27774 e!30630)))

(assert (=> b!47785 (= res!27774 (not (is-MissingZero!220 lt!20463)))))

(assert (=> b!47785 (= e!30635 e!30630)))

(declare-fun bm!3725 () Bool)

(declare-fun call!3728 () Bool)

(assert (=> bm!3725 (= call!3729 call!3728)))

(declare-fun res!27775 () Bool)

(assert (=> start!7434 (=> (not res!27775) (not e!30637))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7434 (= res!27775 (validMask!0 mask!2458))))

(assert (=> start!7434 e!30637))

(assert (=> start!7434 true))

(declare-fun array_inv!874 (array!3178) Bool)

(assert (=> start!7434 (array_inv!874 _keys!1940)))

(declare-datatypes ((V!2479 0))(
  ( (V!2480 (val!1068 Int)) )
))
(declare-datatypes ((ValueCell!740 0))(
  ( (ValueCellFull!740 (v!2128 V!2479)) (EmptyCell!740) )
))
(declare-datatypes ((array!3180 0))(
  ( (array!3181 (arr!1524 (Array (_ BitVec 32) ValueCell!740)) (size!1746 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3180)

(declare-fun e!30631 () Bool)

(declare-fun array_inv!875 (array!3180) Bool)

(assert (=> start!7434 (and (array_inv!875 _values!1550) e!30631)))

(declare-fun b!47786 () Bool)

(assert (=> b!47786 (= e!30636 (not call!3728))))

(declare-fun mapIsEmpty!2132 () Bool)

(declare-fun mapRes!2132 () Bool)

(assert (=> mapIsEmpty!2132 mapRes!2132))

(declare-fun bm!3726 () Bool)

(declare-fun c!6432 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!3726 (= call!3728 (inRange!0 (ite c!6432 (index!3003 lt!20463) (ite c!6431 (index!3005 lt!20463) (index!3002 lt!20463))) mask!2458))))

(declare-fun b!47787 () Bool)

(declare-fun e!30634 () Bool)

(assert (=> b!47787 (= e!30634 e!30636)))

(assert (=> b!47787 (= c!6432 (is-Found!220 lt!20463))))

(declare-fun b!47788 () Bool)

(assert (=> b!47788 (= e!30631 (and e!30633 mapRes!2132))))

(declare-fun condMapEmpty!2132 () Bool)

(declare-fun mapDefault!2132 () ValueCell!740)

