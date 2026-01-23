; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!13912 () Bool)

(assert start!13912)

(declare-fun b!133694 () Bool)

(declare-fun e!77416 () Bool)

(declare-fun tp_is_empty!1439 () Bool)

(declare-fun tp!70578 () Bool)

(assert (=> b!133694 (= e!77416 (and tp_is_empty!1439 tp!70578))))

(declare-fun b!133693 () Bool)

(declare-fun e!77415 () Bool)

(declare-fun tp!70577 () Bool)

(assert (=> b!133693 (= e!77415 (and tp_is_empty!1439 tp!70577))))

(declare-fun b!133692 () Bool)

(declare-fun e!77414 () Bool)

(assert (=> b!133692 (= e!77414 false)))

(declare-datatypes ((B!795 0))(
  ( (B!796 (val!883 Int)) )
))
(declare-datatypes ((List!2201 0))(
  ( (Nil!2195) (Cons!2195 (h!7592 B!795) (t!22787 List!2201)) )
))
(declare-fun l!3288 () List!2201)

(declare-fun lt!40348 () List!2201)

(declare-fun lt!40347 () Bool)

(declare-fun tot!41 () List!2201)

(declare-fun isPrefix!188 (List!2201 List!2201) Bool)

(declare-fun ++!469 (List!2201 List!2201) List!2201)

(declare-fun tail!279 (List!2201) List!2201)

(assert (=> b!133692 (= lt!40347 (isPrefix!188 (++!469 (t!22787 l!3288) lt!40348) (tail!279 tot!41)))))

(declare-fun res!62486 () Bool)

(assert (=> start!13912 (=> (not res!62486) (not e!77414))))

(assert (=> start!13912 (= res!62486 (isPrefix!188 (++!469 l!3288 lt!40348) tot!41))))

(declare-fun elmt!148 () B!795)

(assert (=> start!13912 (= lt!40348 (Cons!2195 elmt!148 Nil!2195))))

(assert (=> start!13912 e!77414))

(assert (=> start!13912 tp_is_empty!1439))

(assert (=> start!13912 e!77415))

(assert (=> start!13912 e!77416))

(declare-fun b!133691 () Bool)

(declare-fun res!62485 () Bool)

(assert (=> b!133691 (=> (not res!62485) (not e!77414))))

(assert (=> b!133691 (= res!62485 (is-Cons!2195 l!3288))))

(assert (= (and start!13912 res!62486) b!133691))

(assert (= (and b!133691 res!62485) b!133692))

(assert (= (and start!13912 (is-Cons!2195 l!3288)) b!133693))

(assert (= (and start!13912 (is-Cons!2195 tot!41)) b!133694))

(declare-fun m!118685 () Bool)

(assert (=> b!133692 m!118685))

(declare-fun m!118687 () Bool)

(assert (=> b!133692 m!118687))

(assert (=> b!133692 m!118685))

(assert (=> b!133692 m!118687))

(declare-fun m!118689 () Bool)

(assert (=> b!133692 m!118689))

(declare-fun m!118691 () Bool)

(assert (=> start!13912 m!118691))

(assert (=> start!13912 m!118691))

(declare-fun m!118693 () Bool)

(assert (=> start!13912 m!118693))

(push 1)

(assert (not start!13912))

(assert (not b!133694))

(assert tp_is_empty!1439)

(assert (not b!133693))

(assert (not b!133692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

